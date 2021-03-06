class UsersController < ApplicationController

    def index 
        @users = User.all
    end 
    
    def new
        @user = User.new
    end

    def show 
        @user = User.find(params[:id])
        
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

    def destroy
        @user = User.find(params[:id])
        @user.delete
        redirect_to users_path
    end


    private

    def user_params
        params.require(:user).permit(:name)
    end
end
