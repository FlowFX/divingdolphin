class AddUniquenessIndexOnExercises < ActiveRecord::Migration[7.0]
  def change
    add_index :exercises, %i[movement_id repetitions sets], unique: true
  end
end
