class AddColumnToLogsTable < ActiveRecord::Migration[6.0]
  def change
    add_timestamps :logs, null: true
  end
end
