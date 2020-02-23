class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|

      t.timestamps
      t.integer :customer_id, null: false
      t.integer :payment_method, null: false, default: 1
      t.integer :postage, null: false, default: 800
      t.integer :order_status, null: false, default: 1
      t.integer :total_price, null: false
      t.string :address, null: false
      t.string :post_code, null: false
      t.string :name, null: false
    end
  end
end
