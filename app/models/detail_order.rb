class DetailOrder < ActiveRecord::Base
	has_many :articles
	belongs_to :order
end
