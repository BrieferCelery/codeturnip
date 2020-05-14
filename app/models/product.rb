class Product < ApplicationRecord
    has_many :user_product_lists
    has_one_attached :picture
end
