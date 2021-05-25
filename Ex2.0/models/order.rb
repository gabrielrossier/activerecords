class Order < ActiveRecord::Base
    belongs_to :client
    has_many :order_items
    validates :order_items,:client, presence: true
    validates_associated :order_items
    
    before_create :set_item_price

    def to_s
        "La commande #{id} du #{created_at}"
    end
    def price
        order_items.sum(&:price)
    end

    protected def set_item_price
        self.item_price ||= product.price
    end
end