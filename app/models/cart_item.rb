class CartItem < ApplicationRecord
    has_many :products
    has_many :carts
end
