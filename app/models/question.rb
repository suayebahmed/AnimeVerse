# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  desc       :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_questions_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Question < ApplicationRecord

    has_many :answers, class_name: 'Answer', foreign_key: 'question_id', inverse_of: :question, dependent: :destroy

    belongs_to(
        :creator,
        class_name:  'User',
        foreign_key: 'user_id',
        inverse_of:  :questions,
  )
end
