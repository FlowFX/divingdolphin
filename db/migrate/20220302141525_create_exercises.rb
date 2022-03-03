class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.references :movement, null: false, foreign_key: true
      t.integer :sets, null: false, default: 1
      t.integer :repetitions

      t.timestamps
    end
  end
end
