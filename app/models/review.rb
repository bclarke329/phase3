class Review < ApplicationRecord
    belongs_to :product
    belongs_to :user

    validates :title, :rating, :review, presence: true
end
