class AddPerformancesToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :performances, :user, foreign_key: true, null: false
  end
end
