# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  desc       :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Question < ApplicationRecord

    has_many :answers, class_name: 'Answer', foreign_key: 'question_id', inverse_of: :question, dependent: :destroy

end
