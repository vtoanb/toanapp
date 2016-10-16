class FoodsController < ApplicationController
  def index
  	# get foods 
  	if params[:sort] == 'name'
      @foods = Section.find(params[:section_id]).foods.all.order(name: :desc) if params[:by] == 'desc'
      @foods = Section.find(params[:section_id]).foods.all.order(name: :asc) if params[:by] == 'asc'
    elsif params[:sort] == 'price'
      @foods = Section.find(params[:section_id]).foods.all.order(price: :asc) if params[:by] == 'asc'
      @foods = Section.find(params[:section_id]).foods.all.order(price: :desc) if params[:by] == 'desc'
    else
      @foods = Section.find(params[:section_id]).foods.all
    end

  	if @foods
  	  @section_name = "Menu for #{@foods.first.section.name}"
  	end
  	if params[:search]
  	  @foods = Food.search params[:search]
  	  @section_name = "Search results"
  	end
  end

  def show
  	if Food.find(params[:id])
  	  @food = Food.find(params[:id])
  	  # increase count for food item
  	  @food.increment!(:count)
  	end
  end

  def search
  end
end
