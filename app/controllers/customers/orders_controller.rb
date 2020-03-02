class Customers::OrdersController < ApplicationController
  def new
    @order = Order.new
    @shipping_address = ShippingAddress.where(customer_id: current_customer.id)
    @customer = current_customer
    end

  def create
    order = Order.new(order_params)
    order.save
    redirect_to customers_orders_check
  end

  def index
  end

  def show
  end

  def finish
  end

  def check
  end


  private
  def order_params
    paramd.require(:order).permit(:payment_method, :address, :post_code,:name)
  end
end
 