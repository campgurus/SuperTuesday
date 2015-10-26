class MenusController < ApplicationController
	def index
		@menus = Menu.all
	end

	def edit
  	@menu = Menu.find(params[:id])
	end

	def show
		@menu = Menu.find(params[:id])
	end

	def new
		@menu = Menu.new
	end

	def create
    @menu = Menu.new(menu_params)
    respond_to do |format|
      if @menu.save
        format.html { redirect_to @menu, notice: 'Menu was successfully created.' }
        format.json { render :show, status: :created, location: @menu }
      else
        format.html { render :new }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

private

	def menu_params
		params.require(:menu).permit(:date, items_attributes: [:id, :_destroy, :name, :price, :dessert])
	end
end
