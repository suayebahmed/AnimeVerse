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
require "test_helper"

class RatingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
