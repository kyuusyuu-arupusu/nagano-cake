class Customers::CustomersController < ApplicationController
  def show
     @customer = Customer.find(params[:id])
  end

  def edit
     @customer = Customer.find(params[:id])
      
  end

  def exit
  	  customer = Customer.find(params[:id])
      customer.destroy
      redirect_to customers
  end

  def update
      customer = Customer.find(params[:id])
      customer.update(customer_params)
      redirect_to customers_customer_path
  end

  private
  def  customer_params
        params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :post_code, :address, :phone_namber, :email)

    end
end
