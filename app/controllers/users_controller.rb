require 'bcrypt'
class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]



    def show 
       
      user = User.find(params[:id])
      render json: {user: user} 

    end

    def profile 
        render json: {user: @user}, status: :accepted
    end 


    def create
        @user = User.create(user_params)
    
        if @user.valid?
            @user.update(wallet: 0)
            @user.update(profilepic: "example")
            @token = encode_token(user_id: @user.id)
          render json: { user: @user, jwt: @token }, status: :created
          
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
         
        end
      end
    private
    def user_params
        params.require(:user).permit(:name, :email, :wallet, :profilepic, :password, :password_confirmation)
    end 

   end