class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.string :period
      t.decimal :bracket
      t.decimal :base
      t.float :rate
      t.string :status

      t.timestamps
    end
  end
end
