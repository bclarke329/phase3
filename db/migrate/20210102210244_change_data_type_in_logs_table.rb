class ChangeDataTypeInLogsTable < ActiveRecord::Migration[6.0]
  def change
    change_column :logs, :comments, :text
  end
end
