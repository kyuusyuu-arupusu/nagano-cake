class Item < ApplicationRecord
	attachment :image
	has_many :order_details, dependent: :destroy
	has_many :cart_items, dependent: :destroy
	belongs_to :genre
    enum sales_atatus: {
   	"販売中": true, "売切れ": false
    }
end
