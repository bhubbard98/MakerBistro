class MenusController < ApplicationController

  def index
    @menus = Menu.all
  end

  def show
    @menu = Menu.find(params[:id])
    @ingredients = @menu.ingredients.all
    @ingredient = @menu.ingredients.new
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    @menu.save
    redirect_to root_path
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def update
    @menu = Menu.find(params[:id])
  end

  def destroy
    @menu = Menu.find(params[:id])
  end


  private

  def menu_params
    params.require(:menu).permit(:name, :price)
  end
end
