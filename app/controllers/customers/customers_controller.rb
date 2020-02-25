class Customers::CustomersController < ApplicationController
  def show
     @customer = Customer.find(params[:id])
  end

  def edit
  end

  def exit
  	  customer = Customer.find(params[:id])
      customer.destroy
      redirect_to customers
  end

  def update
  end

  
end
