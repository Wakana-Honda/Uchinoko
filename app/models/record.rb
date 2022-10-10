class Record < ApplicationRecord
  belongs_to :end_user
  has_many :foods, dependent: :destroy
  has_many :pets, dependent: :destroy
end
