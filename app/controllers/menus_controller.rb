class MenusController < ApplicationController
	def index
		
	end

	def edit
		
	end

	def new
		
	end
	def show
		@menu = Menu.find(params[:id])
		@items = @menu.items
	end
end
