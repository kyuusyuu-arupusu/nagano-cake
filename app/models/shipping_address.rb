class ShippingAddress < ApplicationRecord
	belongs_to :customer

	def view_post_code_and_address_and_name
		self.post_code + self.address +  self.name
	end

	validates :name, presence: true
	validates :post_code, presence: true
	validates :address, presence: true
end
 