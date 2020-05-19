class Product < ApplicationRecord
    has_many :products_categories
    has_many :categories, through: :products_categories

    has_many :users
    has_one_attached :picture
    validates :name, presence: true
    validates :price, presence: true
    validates :picture, presence: true
    
end
