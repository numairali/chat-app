class ChatroomController < ApplicationController
    skip_before_action :verify_authenticity_token

    def getMessagebyId
     @message = Message.find(params[:id])
     render :json => @message
    end

    def getAllMessages
        # @message =  Message.all
        @message =  Message.custom_display
        render :json => @message
    end

    def createMessage
        message = Message.new(params.permit(:body, :user_id))
        message.save
        ActionCable.server.broadcast "chatroom_channel", foo: message.body
        render :json => message
    end

    def createUser
        @user = User.new(params.permit(:username, :password))
        render :json => @user.save
    end
end
