class Product < ActiveRecord::Base
    belongs_to :category
    has_many :order_items
    belongs_to :provider
    has_many :comments, as: :target
    scope :cheap, ->{where('price < ?', 0.2)}

    def to_s
        name
    end


end
