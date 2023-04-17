class AverageCache < ActiveRecord::Base
  belongs_to :rater, :class_name => "Rating"
  belongs_to :rateable, :polymorphic => true
end
