# == Schema Information
#
# Table name: articles
#
#  id         :bigint           not null, primary key
#  body       :text
#  title      :string
#  url_link   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Article < ApplicationRecord
    has_one_attached :image
    validates :url_link, url: { allow_blank: true }
    has_many :comments, dependent: :destroy
end
