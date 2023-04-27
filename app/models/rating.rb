# == Schema Information
#
# Table name: ratings
#
#  id            :bigint           not null, primary key
#  comment       :text
#  review        :string
#  stars         :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  convention_id :bigint
#  user_id       :integer
#
# Indexes
#
#  index_ratings_on_convention_id  (convention_id)
#
# Foreign Keys
#
#  fk_rails_...  (convention_id => conventions.id)
#
class Rating < ApplicationRecord
  #   belongs_to(
  #   :convention,
  #   class_name:  'Convention',
  #   foreign_key: 'convention_id',
  #   inverse_of:  :ratings
  # )
end
