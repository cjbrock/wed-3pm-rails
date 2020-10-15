class Bartender < ApplicationRecord
    has_many :recipes
    has_many :alcohols, through: :recipes
end
