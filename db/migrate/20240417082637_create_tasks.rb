class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.references :instructor_id, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.text :feedback
      t.integer :type, default: 0
      t.references :multiple_choice_id, null: true, foreign_key: true

      t.timestamps
    end
  end
end
