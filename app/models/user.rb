class User < ApplicationRecord
    has_many :routines
    has_many :products
    has_many :reviews

    has_secure_password
    validates_presence_of :name, :email, :password
    validates :email, uniqueness: true 
    
end
