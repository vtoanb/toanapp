class UserController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def edit
  	@user = User.find(params[:id])
  	@user.name = nil
  	@user.phone = nil
  	@user.address = nil
  end


    def show
  	  @user = User.find(params[:id])
    end
  
    def update
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to @user, notice: 'order was successfully orderd.' }
        else
          format.html { render :edit }
        end
      end
    end

    private
    
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :phone, :address)
    end
end
