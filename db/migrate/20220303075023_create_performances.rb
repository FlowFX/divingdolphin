class CreatePerformances < ActiveRecord::Migration[7.0]
  def change
    create_table :performances do |t|
      t.references :exercise, null: false, foreign_key: true
      t.integer :sets
      t.integer :repetitions

      t.date :date, null: false

      t.timestamps
    end
  end
end
