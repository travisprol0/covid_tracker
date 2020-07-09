class FavoritesController < ApplicationController

    def new
        @favorite = Favorite.new
        @locations = Location.all
        @users = User.all
    end

    def create
        favorite = Favorite.create(favorite_params)
        redirect_to user_path(favorite.user_id)
    end

    def destroy_multiple

        Favorite.destroy(params[:favorites])
      
        respond_to do |format|
          format.html { redirect_to users_path }
          format.json { head :no_content }
        end
    end

    def destroy
        @favorite = Favorite.find(params[:id])
        @favorite.destroy
        redirect_to users_path
      end

    private

    def favorite_params
        params.require(:favorite).permit(:user_id, :location_id)
    end
    
end
