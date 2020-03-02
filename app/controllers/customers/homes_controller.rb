class Customers::HomesController < ApplicationController
  def top
     @items= Item.limit(8).order('id DESC')
  end

  def about
  end

end
