class Provider < ActiveRecord::Base

    has_many :products
    has_many :categories , through: :products
    has_many :comments, as: :target

end