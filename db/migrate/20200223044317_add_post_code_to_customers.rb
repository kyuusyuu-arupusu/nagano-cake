class AddPostCodeToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :post_code, :string
  end
end
