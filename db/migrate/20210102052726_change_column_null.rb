class ChangeColumnNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :logs, :created_at, false
    change_column_null :logs, :updated_at, false
  end
end
