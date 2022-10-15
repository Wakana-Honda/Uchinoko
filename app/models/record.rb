class Record < ApplicationRecord
  belongs_to :end_user
  belongs_to :food, optional: true
  belongs_to :pet, optional: true
end
