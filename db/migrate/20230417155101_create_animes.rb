class CreateAnimes < ActiveRecord::Migration[7.0]
  def change
    create_table :animes do |t|
      t.string :title
      t.string :summary
      t.string :author
      t.string :genre
      t.string :ratings

      t.timestamps
    end
  end
end
