class SimplifyPerformance < ActiveRecord::Migration[7.0]
  def change
    remove_column :performances, :repetitions, :integer
    remove_column :performances, :sets, :integer
  end
end
