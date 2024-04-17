class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.references :instructors, null: false, foreign_key: true
      t.references :players, null: true, foreign_key: true
      t.string :name
      t.text :description
      t.references :tasks, null: false, foreign_key: true

      t.timestamps
    end
  end
end
