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

    private

    def favorite_params
        params.require(:favorite).permit(:user_id, :location_id)
    end

    def destroy_multiple
        favorite.location.state.destroy(params[:favorite_ids])
        respond_to do |format|
          format.html { redirect_to favorite.user.id }
        #   format.json { head :no_content }
        end
    end
end
