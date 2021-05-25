class OrderItem < ActiveRecord::Base
    belongs_to :order
    belongs_to :product
    validates :order,:product, presence: true
    scope :bulk, ->(size = 100 ){where('quantity > ?', size)} #size permet de définir une valeur par défaut si lorsque l'on appel la méthode bulk et que on lui donne aucun parametre

    validates :product, :order, presence:true
    validates :quantity , numericality:{greater_than: 0, only_integer: true}

    def price
        quantity * item_price
    end
end