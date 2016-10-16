class SectionsController < ApplicationController
  def index
  	@sections = Section.all
  end

  def show
  	@section = Section.find(params[:id])
  end

  def send_hash
  	@new_hash = Order.unique_id
   	render json: @new_hash
  end
end
