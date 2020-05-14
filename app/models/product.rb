class Product < ApplicationRecord
    has_many :users, through: :user_product_lists
    has_one_attached :picture

    validates :name, presence: true
end
