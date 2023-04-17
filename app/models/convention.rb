# == Schema Information
#
# Table name: conventions
#
#  id          :bigint           not null, primary key
#  description :string
#  link        :string
#  price       :decimal(, )
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Convention < ApplicationRecord
    has_many(
        :ratings,
        class_name:  'Rating',
        foreign_key: 'convention_id',
        inverse_of:  :convention,
        dependent:   :destroy
    )
end
