class Category < ActiveRecord::Base
	has_many :subcategories
	has_many :articles

	def to_s
		name
	end
end
