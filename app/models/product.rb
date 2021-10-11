class Product < ApplicationRecord
    validates :product_name, uniqueness: true, presence: true
    validates :product_price, numericality: {:greater_than => 0}, presence: true
end
