class Customers::OrdersController < ApplicationController
  def new
    @order = Order.new
    @shipping_address = ShippingAddress.where(customer_id: current_customer.id)
    @customer = current_customer
    end

  def index
    @orders = Order.where(customer_id: current_customer.id)
  end


  def show
    @order = Order.find(params[:id])
    @order_detail = @order.order_details
  end

  def finish
  end

  def check
    # if params[:address] == "3"
       # params[:new_post_code][:new_address][:new_name].blank?
       # redirect_to new_customers_order_path
    # end
    
     @order = Order.new
     @total_price = params[:order][:total_price]
     @cart_items = current_customer.cart_items
     @payment_method = params[:order][:payment_method]
    if params[:order][:address] == "1"
      @name = current_customer.last_name + " " + current_customer.first_name
      @post_code = current_customer.post_code
      @address = current_customer.address
    elsif params[:order][:address] == "2"
      shipping_address = ShippingAddress.find(params[:order][:address_id].to_i)
      @post_code = shipping_address.post_code
      @address = shipping_address.address
      @name = shipping_address.name
    else
      @address = params[:order][:new_address]
      @post_code = params[:order][:new_post_code]
      @name = params[:order][:new_name]
      # binding.pry
    end
    # redirect_to customers_orders_check_path
  end

  def create
    cart_items = current_customer.cart_items
    order = Order.new(order_params)
    order.customer_id = current_customer.id
    order.save
    cart_items.each do |cart_item|
    order_detail= OrderDetail.new
    order_detail.item_id = cart_item.item_id
    order_detail.quantity = cart_item.quantity
    order_detail.price = cart_item.item.price
    order_detail.order_id = order.id
    order_detail.save
    end
    cart_items.destroy_all
    redirect_to customers_orders_finish_path
  end


  private
  def order_params
    params.require(:order).permit(:payment_method, :address, :post_code,:name, :total_price)
  end
end
 