# == Schema Information
#
# Table name: discussions
#
#  id         :bigint           not null, primary key
#  discus     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  anime_id   :bigint
#  user_id    :bigint           not null
#
# Indexes
#
#  index_discussions_on_anime_id  (anime_id)
#  index_discussions_on_user_id   (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (anime_id => animes.id)
#  fk_rails_...  (user_id => users.id)
#
class Discussion < ApplicationRecord
  belongs_to :user

  belongs_to(
    :anime,
    class_name:  'Anime',
    foreign_key: 'anime_id',
    inverse_of:  :discussions
  )

  has_many(
    :quizzes,
    class_name:  'Anime',
    foreign_key: 'user_id',
    inverse_of:  :creator
  )

end
