class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.references :instructor_id, null: false, foreign_key: true
      t.references :player_id, null: true, foreign_key: true
      t.string :name
      t.text :description
      t.references :tasks, null: false, foreign_key: true

      t.timestamps
    end
  end
end
