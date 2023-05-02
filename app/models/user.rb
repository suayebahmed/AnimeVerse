# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  username               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  ratyrate_rater
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true, uniqueness: { case_sensitive: false }   
  has_one_attached :avatar
  has_many :comments, dependent: :destroy
  has_many :discussions, dependent: :destroy
  has_many :reviews

has_many(
    :answers,
    class_name:  'Answer',
    foreign_key: 'user_id',
    inverse_of:  :creator
  )

  has_many(
    :questions,
    class_name:  'Question',
    foreign_key: 'user_id',
    inverse_of:  :creator,
    dependent: :destroy
  )

  has_many(
    :animes,
    class_name:  'Anime',
    foreign_key: 'user_id',
    inverse_of:  :creator,
    dependent: :destroy
  )

end
