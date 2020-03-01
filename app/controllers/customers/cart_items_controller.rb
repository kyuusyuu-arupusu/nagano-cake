class Customers::CartItemsController < ApplicationController
  def index
  	 @cart_items = CartItem.where(customer_id: current_customer.id)
  end

  def create
  	 cart_item = CartItem.new(cart_item_params)
  	 cart_item.customer_id = current_customer.id
  	 cart_item.save
  	 redirect_to customers_customers_customer_id_cart_items_path
  end

  def destroy
  	 cart_item = CartItem.find_by(id: params[:id])
  	 cart_item.destroy
  	 redirect_to customers_customers_customer_id_cart_items_path
  end

  def destroy_all
     cart_items = CartItem.where(customer_id: current_customer.id)
     cart_items.destroy_all
     redirect_to customers_items_path
  end

  private

  def cart_item_params
  	params.require(:cart_item).permit(:quantity, :item_id, :customer_id)
  end
end