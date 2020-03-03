class Customers::HomesController < ApplicationController
  def top
     @items= Item.limit(8).order('id DESC')
     @genres = Genre.all
  	 if params[:genre].blank?
  	  @items = Item.all
  	 else
  	  @items = Item.where(genre_id: params[:genre])
  	 end
  end

  def about
  end

  def show
 
  end

  private


end
