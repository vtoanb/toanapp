class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.integer :total_bill
      t.string :order_hash

      t.timestamps
    end
  end
end
