class WishesController < ApplicationController

	def new
		@wish = Wish.new
	end

	def create
		wish = Wish.new(wish_params)
		if wish.save
			redirect_to :action => "complete", id: wish.id
		else
			render :action => "new"
		end
	end


	def comfirmation
		@wish = Wish.new(wish_params)
	end

	def complete
		@wish = Wish.find(params[:id])
	end

	def show
		@wish = Wish.find_by(id: params[:id])
		if @wish.nil?
			redirect_to root_path
			return
		end
		@messages = @wish.messages
	end

	private
	def wish_params
		params.require(:wish).permit(:description, :object, :deadline, :title, :image)
	end
end
