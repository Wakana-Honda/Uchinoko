class Food < ApplicationRecord
  belongs_to :end_user,optional: true
  has_many :records, dependent: :destroy
  has_many :pets, through: :records
  has_many :genres, dependent: :destroy
  has_many :types, dependent: :destroy
  has_one_attached :food_image
  
  def get_food_image(width, height)
   unless food_image.attached?
    file_path = Rails.root.join('app/assets/images/no_image.jpeg')
    food_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
   end
    food_image.variant(resize_to_limit: [width, height]).processed
   end
   
   validates :name, presence: true
   validates :type_id, presence: true
   validates :genre_id, presence: true

end

# もしうまく行かんかったら、has_manyを単数形にして見て