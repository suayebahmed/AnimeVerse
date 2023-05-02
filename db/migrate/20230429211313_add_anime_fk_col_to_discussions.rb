class AddAnimeFkColToDiscussions < ActiveRecord::Migration[7.0]
  def change
    add_reference :discussions, :anime, foreign_key: true
    
  end
end
