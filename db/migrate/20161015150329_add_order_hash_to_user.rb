class AddOrderHashToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :order_hash, :string
  end
end
