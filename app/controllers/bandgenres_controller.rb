class BandgenresController < ApplicationController

    def index 
        bandgenres = Bandgenre.all 
        render json: {bandgenres: bandgenres}

    end 





end 