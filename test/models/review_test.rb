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
require "test_helper"

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
