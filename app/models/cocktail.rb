class Cocktail < ApplicationRecord
    belongs_to :user
    has_many :likes

    validates :body, presence: true 
end
