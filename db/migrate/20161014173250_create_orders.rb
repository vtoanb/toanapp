class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true, index: true, dependent: :destroy
      t.references :food, foreign_key: true, index: true
      t.integer :num_of_food
      t.datetime :delivery

      t.timestamps
    end
  end
end
