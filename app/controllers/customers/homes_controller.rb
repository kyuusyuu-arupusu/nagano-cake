class Customers::HomesController < ApplicationController
  def top

     @genres = Genre.all
     if params[:genre].blank?
      @items= Item.limit(8).order('id DESC')
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
