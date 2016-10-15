class OrdersController < ApplicationController
  def new
  end

  def create
    if Order.where(order_id: params[:order_id])
      # when order Id  already exist, update items in order
      # order has_many_foods via cards, card has many foods
      Order.create(order_id: new_order_id)
  end

  def show
  end

  def index
  end
end
