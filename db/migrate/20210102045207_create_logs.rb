class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.string :current_condition
      t.integer :water_level
      t.integer :hours_slept
      t.integer :comments
      t.integer :user_id
    end
  end
end
