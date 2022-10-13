class Type < ApplicationRecord
 belongs_to :food
 validates :name, presence: true
end
