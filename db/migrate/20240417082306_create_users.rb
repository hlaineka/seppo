class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username
      t.references :instructors, null: true, foreign_key: true
      t.references :players, null: true, foreign_key: true
      t.references :games, null: true, foreign_key: true

      t.timestamps
    end
  end
end
