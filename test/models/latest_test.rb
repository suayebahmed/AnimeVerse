# == Schema Information
#
# Table name: latests
#
#  id                 :bigint           not null, primary key
#  allow_comments     :boolean
#  description        :string
#  latitude           :float
#  longitude          :float
#  show_likes_counter :boolean
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :bigint           not null
#
# Indexes
#
#  index_latests_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class LatestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
