class Product < ApplicationRecord
    has_many :users
    has_one_attached :picture
    validates :name, presence: true

    has_many :products_categories
    has_many :categories, through: :products_categories
    
end
