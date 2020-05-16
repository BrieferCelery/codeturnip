class Product < ApplicationRecord
    has_many :users
    has_one_attached :picture
    validates :name, presence: true
    
end
