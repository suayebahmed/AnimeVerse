# == Schema Information
#
# Table name: conventions
#
#  id          :bigint           not null, primary key
#  description :string
#  link        :string
#  location    :string
#  price       :integer
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Convention < ApplicationRecord
    has_one_attached :image
    validates :link, url: { allow_blank: true }
    validates :title, presence: true
    validates :description, presence: true
    validates :location, presence: true
end
