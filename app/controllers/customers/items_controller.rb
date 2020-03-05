class Customers::ItemsController < ApplicationController
  # def index
  # 	@genres = Genre.where(display_status: true)
  # 	if params[:genre].blank?
  # 	 	@items = Item.where(sales_atatus: true)
  #     @text = "商品"
  # 	else
  # 		@items = Item.where(genre_id: params[:genre]).where(sales_atatus: true)
  #     @text = Genre.find(params[:genre]).genre_name
  # 	end
  # end

  def index
    @genres = Genre.where(display_status: true)
    if params[:genre].blank?
      @items_all = Item.where(sales_atatus: true)
      @text = "商品"
      @items = []
      @items_all.each do |item|
        if item.genre.display_status == true
          @items << item
        end
      end
    else
      @items_all = Item.where(genre_id: params[:genre]).where(sales_atatus: true)
      @text = Genre.find(params[:genre]).genre_name
      @items = []
      @items_all.each do |item|
        if item.genre.display_status == true
          @items << item
        end
      end
    end
    
  end


  def show
  	 @item = Item.find(params[:id])
  	 @genres = Genre.all
  	 @cart_item = CartItem.new
  end

end