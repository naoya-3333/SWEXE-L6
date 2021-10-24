class Product < ApplicationRecord
    has_many :carts
    has_many :cart_items
end
