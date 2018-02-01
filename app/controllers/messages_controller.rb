class MessagesController < ApplicationController
  def new
    @wish = Wish.find(params[:wish_id])
    @messages = Message.new()
  end
  
  def create
    message = Message.new(@messages)
    if message.save?
      render :action => "thankyou"
    else
      render :action => "new"
    end
  end

  def thanks
  end
end
