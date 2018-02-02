class WishesController < ApplicationController

	def new
		@wish = Wish.new
	end

	def create
		wish = Wish.new(wish_params)
		if params[:back]
			render :new
		else wish.save
			redirect_to wish, notice: 'Task was successfully created.'
		end
	end


	def comfirmation
		@wish = Wish.new(wish_params)
	end

	def complete
		@wish = Wish.find(params[:id])
	end

	def show
		@wish = Wish.where(wish_params)
		@messages = @wish.messages
	end

	private
	def wish_params
		params.require(:wish).permit(:description, :object, :deadline, :title, :image)
	end
end
