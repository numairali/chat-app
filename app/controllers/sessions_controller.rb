class SessionsController < ApplicationController
    
    def createUser
        @user = User.new(params.permit(:username, :password))
        render :json => @user.save
    end
end
