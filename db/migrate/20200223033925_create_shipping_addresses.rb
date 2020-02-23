class CreateShippingAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_addresses do |t|

      t.timestamps
      t.integer :customer_id
      t.string :post_code
      t.string :address
      t.string :name
    end
  end
end
