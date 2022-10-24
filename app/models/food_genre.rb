class FoodGenre < ApplicationRecord
  belongs_to :food
  belongs_to :genre
end
