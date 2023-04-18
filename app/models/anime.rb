# == Schema Information
#
# Table name: animes
#
#  id         :bigint           not null, primary key
#  author     :string
#  genre      :string
#  ratings    :string
#  summary    :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Anime < ApplicationRecord
end
