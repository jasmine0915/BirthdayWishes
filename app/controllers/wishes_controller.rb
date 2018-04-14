class WishesController < ApplicationController

	@@image = []
	def new
		@wish = Wish.new
	end

	def comfirmation
		@wish = Wish.new(wish_params)
		# binding.pry
		@@image = wish_params[:image]
	end

	def create
		@wish = Wish.new(wish_params)
		@wish.image = @@image
		if @wish.save
			redirect_to :action => "complete", id: @wish.id
			@@image = []
		else
			render :action => "new"
		end
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

	def print
		@wish = Wish.find(params[:id])
	end

	private
	def wish_params
		params.require(:wish).permit(:description, :object, :deadline, :title, :image)
	end
end
