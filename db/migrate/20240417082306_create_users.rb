class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username
      t.references :instructor_id, null: true, foreign_key: true
      t.references :player_id, null: true, foreign_key: true
      t.references :game_id, null: true, foreign_key: true

      t.timestamps
    end
  end
end
