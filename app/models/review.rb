class Review < ApplicationRecord
    belongs_to :product
    belongs_to :user

    validates :title, length: { maximum: 30, too_long: "%{count} characters is the maximum allowed" }
    validates_numericality_of :rating, :less_than_or_equal_to => 5, message: "Rating has to be between 1 and 5."
    validates :review, length: {maximum: 300, too_long: "%{count} characters is the maximum allowed"  }

end
