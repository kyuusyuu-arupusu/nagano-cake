class Admins::CustomersController < ApplicationController
  def show
   @customer= Customer.find(params[:id])
  end

  def edit
   @customer= Customer.find(params[:id])

  end

  def update
    @customer= Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to admins_customer_path(@customer)
  end

  def index
    @customers= Customer.all
  end

  private
  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :post_code, :address, :phone_number)  
  end

end
