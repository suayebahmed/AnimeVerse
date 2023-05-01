class AddUserFkColToAnimes < ActiveRecord::Migration[7.0]
  def change
    add_reference :animes, :user, foreign_key: true
  end
end
