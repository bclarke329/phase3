class User < ApplicationRecord
    has_many :routines
    has_many :products
    has_many :product_reviews

    has_secure_password
end
