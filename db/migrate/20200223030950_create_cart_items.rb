class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|

      t.timestamps
      t.integer :quantity
      t.integer :customer_id
      t.integer :item_id
    end
  end
end
