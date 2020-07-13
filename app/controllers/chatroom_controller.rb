class ChatroomController < ApplicationController
    skip_before_action :verify_authenticity_token

    def getMessagebyId
     @message = Message.find(params[:id])
     render :json => @message
    end

    def getAllMessages
        @message = Message.all
        render :json => @message
    end

    def createMessage
        @message1 = Message.new(params.permit(:body, :user_id))
        render :json => @message1.save
    end

    def createUser
        @user = User.new(params.permit(:username, :password))
        render :json => @user.save
    end
end
