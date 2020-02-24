class Customers::CustomersController < ApplicationController
  def show
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
