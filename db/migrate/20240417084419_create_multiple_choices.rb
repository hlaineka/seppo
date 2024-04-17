class CreateMultipleChoices < ActiveRecord::Migration[7.1]
  def change
    create_table :multiple_choices do |t|
      t.string :aswer
      t.integer :points

      t.timestamps
    end
  end
end
