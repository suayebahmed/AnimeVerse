# == Schema Information
#
# Table name: reviews
#
#  id            :bigint           not null, primary key
#  comment       :text
#  star          :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  convention_id :bigint           not null
#  user_id       :bigint           not null
#
# Indexes
#
#  index_reviews_on_convention_id  (convention_id)
#  index_reviews_on_user_id        (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (convention_id => conventions.id)
#  fk_rails_...  (user_id => users.id)
#
class Review < ApplicationRecord
  belongs_to :convention
  belongs_to :user

  validates :star, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 6}
  validates :user_id, :uniqueness => { :scope => :convention_id }
end
