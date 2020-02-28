class Admins::ItemsController < ApplicationController
  def index
  	@items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
  	@item = Item.new
    @genre = Genre.where(display_status: true)
  end

  def create
  	@item = Item.new(item_params)
  	@item.save
  	redirect_to admins_items_path
  end

  def edit
    @item = Item.find(params[:id])
    @genre = Genre.where(display_status: true)
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to admins_item_path(@item.id)
  end

  private
  def item_params
  	params.require(:item).permit(:name, :price, :description, :genre_id, :image_id, :sales_atatus)
  end


end

