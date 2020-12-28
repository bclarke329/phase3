class Product < ApplicationRecord
    has_many :users, through: :product_reviews
    validates :name, uniqueness: true 
end
