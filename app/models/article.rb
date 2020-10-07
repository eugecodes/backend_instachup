class Article < ActiveRecord::Base
	belongs_to :category
	belongs_to :subcategory
	belongs_to :detail_order
	has_many :images

	def to_s
		description
	end
end
