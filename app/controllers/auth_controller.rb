class AuthController < ApplicationController
    def create 
        @user = User.find_by(name: user_login_params[:name])
        #User#authenticate come from BCrypt
        if @user && @user.authenticate(user_login_params[:password])
            #encode token comes from applicationcontroller
            token = encode_token({ user_id: @user.id})
            render json: {user: @user, jwt: token}, status: :accepted
        else 
            render json: { message: 'Invalid username or password' }, status: :unauthorized
        end 
    end 


    private
    def user_login_params
        params.require(:user).permit(:name, :password)
    end
end
