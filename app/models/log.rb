class Log < ApplicationRecord
    belongs_to :user

    validates :current_condition, :water_level, :hours_slept, :comments, presence: true
    validates_numericality_of :water_level, :less_than_or_equal_to => 128, message: "Has to be between 0 and 128 ounces."
    validates_numericality_of :hours_slept, :less_than_or_equal_to => 12, message: "Can't be more than 12 hours."
    validates :comments, length: { minimum: 25,
        too_short: "%{count} characters is the miniumum allowed" }
end