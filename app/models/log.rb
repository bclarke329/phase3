class Log < ApplicationRecord
    belongs_to :user

    validates :current_condition, :water_level, :hours_slept, :comments, presence: true
end