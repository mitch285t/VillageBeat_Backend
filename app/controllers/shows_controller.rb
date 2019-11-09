class ShowsController < ApplicationController 
    def index 
    shows = Show.all 
    showsord = shows.order((:time))
    render json: {shows: showsord}
    end

    def show 
        show = Show.find(params[:id])
        render json: {show: show.time, band: show.band, venue: show.venue }
    end 

end 
