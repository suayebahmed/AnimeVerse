class CreateConventions < ActiveRecord::Migration[7.0]
  def change
    create_table :conventions do |t|
      t.string :title
      t.decimal :price
      t.string :description
      t.string :link

      t.timestamps
    end
  end
end
