# == Schema Information
#
# Table name: answers
#
#  id          :bigint           not null, primary key
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :bigint
#
# Indexes
#
#  index_answers_on_question_id  (question_id)
#
# Foreign Keys
#
#  fk_rails_...  (question_id => questions.id)
#
class Answer < ApplicationRecord

    belongs_to(
        :question,
        class_name:  'Question',
        foreign_key: 'question_id',
        inverse_of:  :answers
  )

end
