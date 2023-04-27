class CreateConventions < ActiveRecord::Migration[7.0]
  def change
    create_table :conventions do |t|
      t.string :description
      t.string :link
      t.string :location
      t.integer :price
      t.string :title

      t.timestamps
    end
  end
end
