class Order < ActiveRecord::Base
	belongs_to :user
	has_many :detail_orders, :dependent => :destroy
	has_many :articles, :through => :detail_order
end
