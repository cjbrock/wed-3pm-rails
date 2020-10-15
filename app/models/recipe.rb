class Recipe < ApplicationRecord
    belongs_to :bartender
    belongs_to :alcohol
end
