class Product < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    
    validates :name, uniqueness: true

    scope :alpha, -> { order(:brand) }
end
