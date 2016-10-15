class FoodsController < ApplicationController
  def index
  	# get foods 
  	@foods = if params[:sort] == 'name'
  	           Section.find(params[:section_id]).foods.all.order(name: :desc) if params[:by] == 'desc'
  	           Section.find(params[:section_id]).foods.all.order(name: :asc) if params[:by] == 'asc'
  	         elsif params[:sort] == 'count'
  	           Section.find(params[:section_id]).foods.all.order(count: :asc) if params[:by] == 'asc'
  	           Section.find(params[:section_id]).foods.all.order(count: :desc) if params[:by] == 'desc'
  	         else
  	           Section.find(params[:section_id]).foods.all
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
