class CreateLatests < ActiveRecord::Migration[7.0]
  def change
    create_table :latests do |t|
      t.string :description
      t.float :longitude
      t.float :latitude
      t.references :user, null: false, foreign_key: true
      t.boolean :allow_comments
      t.boolean :show_likes_counter

      t.timestamps
    end
  end
end
