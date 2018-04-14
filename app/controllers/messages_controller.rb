class MessagesController < ApplicationController
  def new
    @wish = Wish.find(params[:wish_id])
    @messages = Message.new()
  end

  def create
    wish = Wish.find(params[:wish_id])
    
    @message = wish.messages.build(message_params)
    if @message.save
     
      redirect_to :action => "thankyou", id: @message.id
    else
      render :action => "new"
    end
  end

  def thankyou
    @message = Message.find(params[:id])
  end
end

def message_params
  params.require(:message).permit(:name, :body, :icon)
end
