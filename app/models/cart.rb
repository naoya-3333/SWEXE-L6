class Cart < ApplicationRecord
    has_many :products
    has_many :cart_items
end
