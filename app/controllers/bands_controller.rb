class BandsController < ApplicationController

def index 
    bands = Band.all 
    render json: bands
end
def show 
    band = Band.find(params[:id])
    render json: {band: band, shows: band.shows, venues: band.venues, genres: band.genres}
end

end 