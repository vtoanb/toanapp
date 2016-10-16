class OrdersController < ApplicationController
  def new
  end

  def create
  	# check if order exist or not
  	@user = User.where(order_hash: params[:hash]).first
    # if user not exist with hash
  	if not @user
  		@user = User.create!(order_hash: params[:hash],
  			                 phone: 'empty',
  			                 address: 'empty',
  			                 name: 'empty')
  	end

  	food_items = params[:food].split('/')
    if food_items
    	# total bill
    	total = 0
    	food_items.each do |e|
    	  i = e.to_i
        @user.orders.create(food_id: i, num_of_food: 1) if e.to_i > 0
        # calculate total bill
        total += Food.find(i).price if i > 0
    	end
      @user.total_bill = total
      # saving @usr
      @user.save
      # redirect to order
    	redirect_to action: 'show', id: @user.id
    end
  end

  def show
  	@user = User.find(params[:id])
  	@total = params
  end

  def index
  end
end
