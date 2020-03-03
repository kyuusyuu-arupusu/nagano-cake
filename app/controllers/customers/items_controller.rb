class Customers::ItemsController < ApplicationController
  def index
  	@genres = Genre.all
  	if params[:genre].blank?
  	 	@items = Item.all
  	else
  		@items = Item.where(genre_id: params[:genre])
  	end
  end

  def show
  	 @item = Item.find(params[:id])
  	 @genres = Genre.all
  	 @cart_item = CartItem.new
  end

end