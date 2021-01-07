class Routine < ApplicationRecord
    belongs_to :user

    validates :cleanser, :toner, :moisturizer, :serums, :spf, :time_of_day, presence: true
    

end 