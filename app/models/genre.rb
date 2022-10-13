class Genre < ApplicationRecord
  belongs_to :food
  validates :name, presence: true
end
