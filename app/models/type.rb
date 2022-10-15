class Type < ApplicationRecord
 belongs_to :food,optional: true
 validates :name, presence: true
end
