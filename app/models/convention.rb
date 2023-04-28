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
class Convention < ApplicationRecord
    has_one_attached :image
    has_many :reviews, dependent: :destroy

    validates :link, url: { allow_blank: true }
    validates :title, presence: true
    validates :description, presence: true
    validates :price, presence: true, numericality: { :greater_than => 0 }
    
    validates :state, presence: true
    validates_inclusion_of :state, in: %w( AL AK AZ AR CA CO CT DE DC FL GA HI ID IL IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA RI SC SD TN TX UT VT VA WA WV WI WY )


    def average_rating
        reviews.count == 0 ? 0 : reviews.average(:star).round(2)
    end

end
