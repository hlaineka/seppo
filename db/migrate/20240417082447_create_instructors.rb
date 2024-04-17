class CreateInstructors < ActiveRecord::Migration[7.1]
  def change
    create_table :instructors do |t|
      t.references :games, null: true, foreign_key: true
      t.references :tasks, null: true, foreign_key: true
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
