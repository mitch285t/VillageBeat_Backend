class UserbandsController < ApplicationController

    def index 
      
        userbands = Userband.all 
        render json: {userbands: userbands}

    end 












end 