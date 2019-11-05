class UserbandsController < ApplicationController

    def index 
      
        userbands = Userband.all 
        render json: {userbands: userbands}

    end 

    def create
        @userband = Userband.create(userband_params)
        render json: {userband: @userband}
      end





      private 

      def userband_params 
        params.require(:userband).permit(:user_id, :band_id)
      end 




end 