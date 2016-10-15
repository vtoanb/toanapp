class FoodsController < ApplicationController
  def index
  	@foods = Section.find(params[:section_id]).foods.all
  end

  def show
  	@food = Food.find(params[:id]) if Food.find(params[:id])
  end
end
