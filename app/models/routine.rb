class Routine < ApplicationRecord
    belongs_to :user

    validates :cleanser, :toner, :moisturizer, :serum, :spf, presence: true
    

end 