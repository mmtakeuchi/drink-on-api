class User < ApplicationRecord
    has_secure_password

    has_many :cocktails
    has_many :likes

    validates :email, presence: true, uniqueness: true 
    validates :password_digest, presence: true 
    validates :password, length: { minimum: 6 }
    validates :username, uniqueness: true, presence: true
end
