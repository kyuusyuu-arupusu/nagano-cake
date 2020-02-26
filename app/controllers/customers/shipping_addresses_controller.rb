class Customers::ShippingAddressesController < ApplicationController
  def index
      @shipping_addresses = ShippingAddress.all
      @shipping_address = ShippingAddress.new
  end

  def edit
  end

  def create
    # binding.pry
      @shipping_address = ShippingAddress.new(shipping_address_params)
      @shipping_address.customer_id = current_customer.id
      @shipping_address.save
      redirect_to customers_shipping_addresses_path
  end

  def update
  end

  def destroy
      shipping_address = ShippingAddress.find(params[:id])
      shipping_address.destroy
      redirect_to customers_shipping_addresses_path
  end

  private
  def  shipping_address_params
        params.require(:shipping_address).permit(:post_code, :address, :name)

  end
end
