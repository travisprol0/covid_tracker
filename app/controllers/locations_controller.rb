class LocationsController < ApplicationController
    def index 
        # @locations = Location.all
        location = states_current[:state]
        @arrayOfCurrentStates
    end 

    def show 
        @location = Location.find(params[:id])
    end 

    private

    def states_current #arguemnt?
        url = "https://covidtracking.com/api/states"
        restClientResponseObject = RestClient.get(url)
        jsonButItsAString = restClientResponseObject.body
        workable_hash = JSON.parse(jsonButItsAString)   
        @arrayOfCurrentStates = workable_hash["items"]
    end
end
