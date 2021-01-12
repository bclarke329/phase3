class RemoveColumnInRoutineTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :routines, :time_of_day, :string
  end
end
