# == Schema Information
#
# Table name: pins
#
#  id         :bigint           not null, primary key
#  titlr      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Pin < ApplicationRecord
  has_one_attached :image
  has_many_attached :pictures
end
