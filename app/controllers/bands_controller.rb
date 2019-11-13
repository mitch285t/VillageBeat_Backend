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
    render json: {band: band, shows: ordered, venues: orderedvenues, genres: band.genres.limit(1)}
end

def update
    band = Band.find(params[:id])
    if band.update(band_wallet_params)
        render json: {band: band}
    else 
        render json: {error: "failed to update user"}, status: :not_acceptable

    end
end
def band_wallet_params 
    params.permit(:wallet)
end 
end