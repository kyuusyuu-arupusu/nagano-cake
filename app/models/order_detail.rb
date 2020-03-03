class OrderDetail < ApplicationRecord
	belongs_to :order
	belongs_to :item
	enum production_status:{
		"入金待ち":1, "入金確認":2, "製作中":3, "発送準備中":4, "発送済み":5
	}
end
