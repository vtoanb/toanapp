class AddOrderStatusToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :order_status, :boolean
  end
end
