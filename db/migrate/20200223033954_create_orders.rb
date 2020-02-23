class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|

      t.timestamps
      t.integer :customer_id
      t.integer :payment_method
      t.integer :postage
      t.integer :order_status
      t.integer :total_price
      t.string :address
      t.string :post_code
      t.string :name
    end
  end
end
