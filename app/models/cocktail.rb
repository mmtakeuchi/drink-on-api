class Cocktail < ApplicationRecord
    belongs_to :user
    has_many :likes
    has_many :comments

    validates :name, :ingredients, presence: true 
end
