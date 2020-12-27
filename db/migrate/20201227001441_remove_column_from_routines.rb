class RemoveColumnFromRoutines < ActiveRecord::Migration[6.0]
  def change
    remove_column :routines, :user_id, :string
  end
end
