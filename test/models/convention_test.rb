# == Schema Information
#
# Table name: conventions
#
#  id          :bigint           not null, primary key
#  city        :string
#  description :string
#  link        :string
#  price       :integer
#  state       :string
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
