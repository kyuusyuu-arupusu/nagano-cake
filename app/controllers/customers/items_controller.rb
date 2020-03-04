class Customers::ItemsController < ApplicationController
	before_action :authenticate_customer!
  def index
  	@genres = Genre.all
  	if params[:genre].blank?
  	 	@items = Item.all
      @text = "商品"
  	else
  		@items = Item.where(genre_id: params[:genre])
      @text = Genre.find(params[:genre]).genre_name
  	end
  end
  def show
  	 @item = Item.find(params[:id])
  	 @genres = Genre.all
  	 @cart_item = CartItem.new
  end

end