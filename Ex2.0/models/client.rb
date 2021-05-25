class Client < ActiveRecord::Base
    has_many :orders
    has_many :order_items, through: :orders
    has_many :products, through: :order_items

    
end