class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.timestamps
      t.integer :genre_id, null: false
      t.string :name, null: false
      t.integer :price, null: false
      t.text :description, null: false 
      t.string :image_id
      t.boolean :sales_atatus, null: false, default: true
    end

  end
end
