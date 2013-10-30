class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :employee_identifier
      t.string :full_name
      t.string :status
      t.integer :exemptions
      t.decimal :additional, :precision => 15, :length => 2
      t.integer :schedule_id

      t.timestamps
    end
  end
end
