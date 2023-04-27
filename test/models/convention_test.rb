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
require "test_helper"

class ConventionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
