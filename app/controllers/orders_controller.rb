class OrdersController < ApplicationController
  def new
  end

  def create
  	# check if order exist or not
  	@user = User.where(order_hash: params[:hash]).first
  	if not @user
  		@user = User.create!(order_hash: params[:hash],
  			                 phone: 'empty',
  			                 address: 'empty',
  			                 name: 'empty')
  	end

  	food_items = params[:food].split('/')
  	puts food_items

  	redirect_to action: 'show', id: @user.id
  end

  def show
  	@user = User.find(params[:id])
  end

  def index
  end
end
