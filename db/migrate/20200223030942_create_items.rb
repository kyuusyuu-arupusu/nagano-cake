class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.timestamps
      t.integer :jenre_id
      t.string :name
      t.integer :price
      t.text :description
      t.string :image_id
      t.boolean :sales_atatus
  end
end
