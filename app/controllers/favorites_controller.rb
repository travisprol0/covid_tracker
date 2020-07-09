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

    def show
        @favorite = Favorite.find(params[:id])
        @location = Location.find(params[:id])
        @favorites = Favorite.all
        states_daily
        states_current
        states_info
    end

    def destroy
        @favorite = Favorite.find(params[:id])
        @userID = @favorite.user_id
        @favorite.delete
        redirect_to user_path(@userID)
    end

    private

    def favorite_params
        params.require(:favorite).permit(:user_id, :location_id)
    end

    private

    def states_info
        url = "https://covidtracking.com/api/states/info"
        restClientResponseObject = RestClient.get(url)
        jsonButItsAString = restClientResponseObject.body
        workable_hash = JSON.parse(jsonButItsAString)   
        @arrayOfStatesInfo = workable_hash
    end 
    
    def states_daily
        url = "https://covidtracking.com/api/states/daily"
        restClientResponseObject = RestClient.get(url)
        jsonButItsAString = restClientResponseObject.body
        workable_hash = JSON.parse(jsonButItsAString)   
        @arrayOfStatesDaily = workable_hash
        
    end 

    def states_current
        url = "https://covidtracking.com/api/states"
        restClientResponseObject = RestClient.get(url)
        jsonButItsAString = restClientResponseObject.body
        workable_hash = JSON.parse(jsonButItsAString)   
        @arrayOfCurrentStates = workable_hash
    end

    def us_daily
        url = "https://covidtracking.com/api/us/daily"
        restClientResponseObject = RestClient.get(url)
        jsonButItsAString = restClientResponseObject.body
        workable_hash = JSON.parse(jsonButItsAString)   
        @arrayOfUSDaily = workable_hash
    end 

    def us_current
        url = "http://covidtracking.com/api/us"
        restClientResponseObject = RestClient.get(url)
        jsonButItsAString = restClientResponseObject.body
        workable_hash = JSON.parse(jsonButItsAString)   
        @arrayOfUSCurrent = workable_hash
    end 
end
