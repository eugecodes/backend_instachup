class Subcategory < ActiveRecord::Base
	belongs_to :category
	has_many :articles

	def to_s
		name
	end
end
