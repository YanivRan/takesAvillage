class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "messages"
  end

  def receive(data)
    message = Message.new data.merge(user: current_user)
    if message.save
      ActionCable.server.broadcast "messages",
        message: message.translate, 
        user_email: current_user.email, 
        icon: current_user.dialect.icon_path, 
        active_users: User.where(status: 1)
    end
  end
end