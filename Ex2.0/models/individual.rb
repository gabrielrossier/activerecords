class Individual  < Client
    validates :firstname, presence: true
    validates :lastname, length: {
        minimum: 2,
        maximum: 20
    }
end
