class Genre < ApplicationRecord
	has_many :items
	acts_as_paranoid
end
