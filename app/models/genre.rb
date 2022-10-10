class Genre < ApplicationRecord
  belongs_to :foods
  validates :name, presence: true
end
