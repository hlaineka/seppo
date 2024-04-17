class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.references :games, null: true, foreign_key: true
      t.references :users, null: true, foreign_key: true
      
      t.timestamps
    end
  end
end
