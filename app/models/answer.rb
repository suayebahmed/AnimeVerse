# == Schema Information
#
# Table name: answers
#
#  id          :bigint           not null, primary key
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :bigint
#  user_id     :bigint
#
# Indexes
#
#  index_answers_on_question_id  (question_id)
#  index_answers_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (question_id => questions.id)
#  fk_rails_...  (user_id => users.id)
#
class Answer < ApplicationRecord

  belongs_to(
    :creator,
    class_name:  'User',
    foreign_key: 'user_id',
    inverse_of:  :answers
  )

    belongs_to(
        :question,
        class_name:  'Question',
        foreign_key: 'question_id',
        inverse_of:  :answers
  )

end
