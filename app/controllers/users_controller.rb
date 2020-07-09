class UsersController < ApplicationController

    def index 
        @users = User.all
    end 
    
    def new
        @user = User.new
    end

    def show 
        @user = User.find(params[:id])
        @location = Location.find(params[:id])
        @favorites = Favorite.all
    end 

    def create
        @user = User.create(user_params)

        if @user.valid? 
            redirect_to user_path(@user.id)
        else 
            flash[:my_errors] = @user.errors.full_messages 
            redirect_to new_user_path
        end 
    end

    def destroy_multiple
        favorite.location.state.destroy(params[:favorite_ids])
        respond_to do |format|
          format.html { redirect_to favorite.user.id }
          format.json { head :no_content }
        end
    end


    private

    def user_params
        params.require(:user).permit(:username, :first_name, :last_name)
    end
end
