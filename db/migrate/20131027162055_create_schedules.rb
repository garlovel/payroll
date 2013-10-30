class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :code
      t.string :description
      t.string :period
      t.float :factor
      t.decimal :rate, :precision => 15, :length => 2
      t.integer :occur
      
      t.timestamps
    end
  end
end
