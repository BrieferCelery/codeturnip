class Product < ApplicationRecord
    has_one_attached :picture

    validates :name, presence: true
    validates :price, presence: true
    validates :picture, presence: true
    validates :supply, presence: true
    
end
