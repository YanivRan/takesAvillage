class MessagesController < ApplicationController
  before_action :require_login
  
  def index
    @rooms = Room.all 
    @users = User.all
    @messages = Message.all
    @message = Message.new
  end

  def create
    @message = Message.new message_params
    if @message.save
      send_notifications
    else
      flash[:error] = "Could not send message"
      redirect_to messages_path
    end
  end

  private

  def message_params
    params.
      require(:message).
      permit(:body).
      merge(user: current_user)
  end

  def send_notifications
    ActionCable.server.broadcast "messages",
      message: @message.translate,
      user_email: current_user.email, 
      icon: current_user.dialect.icon_path
  end
end