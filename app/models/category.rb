class Category < ApplicationRecord
    belongs_to :product
    # delegate :company, :to => :employee, :allow_nil => true
end
