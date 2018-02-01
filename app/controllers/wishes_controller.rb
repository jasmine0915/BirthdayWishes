class WishesController < ApplicationController

	def new
		@wish = Wish.new
	end

	def create
		wish = Wish.new(wish_params)
		if wish.save?
			redirect_to comfirmation_wishes_path
		else
			render :action => "new"
		end
	end

	def confirmation
		@wish = Wish.find(params[:id])
	end

	def complete
		@wish = Wish.find(params[:id])
	end

	def show
		@wish = Wish.find(params[:id])
		@messages = @wish.messages
	end

	private
	def wish_params
		params.require(:wish).permit(:discription, :object, :deadline, :title, :image)
	end
end
