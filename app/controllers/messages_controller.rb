class MessagesController < ApplicationController
  def new
    @wish = Wish.find(params[:wish_id])
    @messages = Message.new()
  end
  
  def create
    @message = Message.new(message_params)
    if @message.save
      render :action => "thankyou"
    else
      redirect_to :action => "new"
    end
  end

  def thankyou
  end
end

def message_params
  params.require(:message).permit(:name, :body, :icon)
end
