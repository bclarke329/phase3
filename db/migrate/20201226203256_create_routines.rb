class CreateRoutines < ActiveRecord::Migration[6.0]
  def change
    create_table :routines do |t|
      t.string :cleanser
      t.string :toner
      t.string :moisturizer
      t.string :serum
      t.string :spf
      t.string :time_of_day
      t.string :user_id
      t.timestamps null: false
    end
  end
end
