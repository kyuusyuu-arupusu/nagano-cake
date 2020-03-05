class Customers::CustomersController < ApplicationController
  before_action :authenticate_customer!
  def show
     @customer = Customer.find(params[:id])
     @shipping_addresses = ShippingAddress.where(customer_id: current_customer.id)
     if current_customer.id != @customer.id
     redirect_to root_path
     end
  end

  def edit
     @customer = Customer.find(params[:id])
     if current_customer.id != @customer.id
     redirect_to root_path
     end
  end

  def exit
     @customer = Customer.find(params[:id])
     if current_customer.id != @customer.id
     redirect_to root_path
     end
  end

  def update
      @customer = Customer.find(params[:id])
      if @customer.update(customer_params)
      redirect_to customers_customer_path
      else
      render :edit
    end
  end

  def destroy
      customer = Customer.find(params[:id])
      customer.destroy
      redirect_to root_path
  end

  private
  def  customer_params
        params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :post_code, :address, :phone_namber, :email)

    end
end
