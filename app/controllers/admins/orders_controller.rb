class Admins::OrdersController < ApplicationController

  def index
    @orders= Order.all
  end

  def show
    @order= Order.find(params[:id])
    @order_detail = @order.order_details
  end

  def update
      order= Order.find(params[:id])
      order.update(order_params)
      redirect_to admins_order_path(order.id)
      
  end

  def order_detail_update
      order_detail= OrderDetail.find(params[:id])
      order_detail.update(order_detail_params)
      redirect_to admins_order_path(order.id) 
  end

  private

 def order_params
   params.require(:order).permit(:order_status)
 end

 def order_detail_params
  params.require(:order_detail).permit(:production_status)
 end

end
