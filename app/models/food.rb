class Food < ApplicationRecord
  belongs_to :end_user
  # has_many :genres, dependent: :destroy
  has_many :types, dependent: :destroy

end

# もしうまく行かんかったら、has_manyを単数形にして見て