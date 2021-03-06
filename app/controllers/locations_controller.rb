class LocationsController < ApplicationController
    def home 
        us_daily
        us_current
    end 
    
    def index 
        @locations = Location.all
    end 

    def show 
        @location = Location.find(params[:id])
        states_daily
        states_current
        states_info
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
