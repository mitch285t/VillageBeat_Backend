class BandsController < ApplicationController

def index 
    bands = Band.all 
    render json: bands
end
def show 
    band = Band.find(params[:id])
    shows = band.shows
    ordered = shows.order(:time)
    venues = band.venues
    orderedvenues = venues.order(:time)
    render json: {band: band, shows: ordered, venues: orderedvenues, genres: band.genres}
end

end 