class Customers::OrdersController < ApplicationController
  def new
    @order = Order.new
    @shipping_adress = ShippingAdress.all.where(customer_id: current_customer.id)
  end

  def index
  end

  def show
  end

  def finish
  end

  def check
  end

  def create
  end
end
