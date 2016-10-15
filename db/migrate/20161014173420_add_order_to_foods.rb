class AddOrderToFoods < ActiveRecord::Migration[5.0]
  def change
    add_reference :foods, :order, foreign_key: true, index: true
  end
end
