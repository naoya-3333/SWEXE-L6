class Product < ApplicationRecord
    
    validates :name, presence: true
    validates :price,presence: true, numericality: { only_integer:true }
    
    has_many :carts
    has_many :cart_items,dependent: :destroy
end
