class AddConventionFkColToRatings < ActiveRecord::Migration[7.0]
  def change
    add_reference :ratings, :convention, foreign_key: true
  end
end
