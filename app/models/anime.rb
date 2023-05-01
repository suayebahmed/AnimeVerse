# == Schema Information
#
# Table name: animes
#
#  id         :bigint           not null, primary key
#  author     :string
#  genre      :string
#  ratings    :string
#  summary    :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_animes_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Anime < ApplicationRecord

    belongs_to(
      :creator,
      class_name:  'User',
      foreign_key: 'user_id',
      inverse_of:  :animes
  )

    has_many(
        :discussions,
        class_name:  'Discussion',
        foreign_key: 'anime_id',
        inverse_of:  :anime,
        dependent:   :destroy
      )

end
