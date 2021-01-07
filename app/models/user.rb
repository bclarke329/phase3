class User < ApplicationRecord
    has_many :logs
    has_many :routines
    has_many :products
    has_many :reviews

    has_secure_password

    validates_presence_of :name, :email, message: "Must provide a name and email"
    validates_confirmation_of :password, message: "Please enter a password"
    validates :email, uniqueness: true


    def password_complexity
        return if password.blank? || password =~ /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,30}$/
        errors.add :password, "should be 8-30 characters with at least one letter and one number. Special characters are invalid."
    end

end
