class Admins::ItemsController < ApplicationController
  def index
  	@itens = Item.all
  end

  def show
  end

  def new
  	@item = Item.new
  end

  def create
  	@item = Item.new(item_params)
  	@item.save
  	redirect_to admins_items_path
  end

  def edit
  end

  private
  def item_params
  	params.require(:item).permit(:name, :price, :description, :image_id, :sales_atatus)
  end


end

