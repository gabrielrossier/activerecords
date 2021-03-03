class Product < ActiveRecord::Base
    belongs_to :category
    has_many :order_items
    
    scope :cheap, ->{where('price < ?', 0.2)}
end
