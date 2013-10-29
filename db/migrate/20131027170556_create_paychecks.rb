class CreatePaychecks < ActiveRecord::Migration
  def change
    create_table :paychecks do |t|
      t.integer :employee_id
      t.integer :schedule_id
      t.integer :units
      t.date :date
      t.decimal :gross, :precision => 15, :length => 2
      t.decimal :css, :precision => 15, :length => 2
      t.decimal :cmc, :precision => 15, :length => 2
      t.decimal :net, :precision => 15, :length => 2
      t.decimal :fit, :precision => 15, :length => 2
      t.decimal :ess, :precision => 15, :length => 2
      t.decimal :emc, :precision => 15, :length => 2
      t.decimal :rate, :precision => 15, :length => 2
      t.integer :check_no
      t.date :issued

      t.timestamps
    end
  end
end
