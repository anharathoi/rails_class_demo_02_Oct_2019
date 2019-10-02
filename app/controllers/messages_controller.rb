class MessagesController < ApplicationController

  def index
    @messages = Message.all
    @message = Message.new
  end

  def create
    @message = Message.create(message_params)
    redirect_to messages_thanks_path(id: @message.id)
  end

  def thank_you_page
    @message = Message.find(params[:id])
  end

  private
  def message_params
    params.require(:message).permit(:name, :email, :message_body)
  end
end
