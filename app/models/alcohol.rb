class Alcohol < ApplicationRecord
    has_many :recipes
    has_many :bartenders, through: :recipes
end
