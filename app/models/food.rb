class Food < ApplicationRecord
  belongs_to :end_user
  # has_many :genres, dependent: :destroy
  # has_many :types, dependent: :destroy
  # has_one_attached :food_image
  
  # # def get_food_image(width, height)
  #   unless image.attached?
  #     file_path = Rails.root.join('app/assets/images/no_image.jpeg')
  #     image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
  #   end
  #     image.variant(resize_to_limit: [width, height]).processed
  # end

end

# もしうまく行かんかったら、has_manyを単数形にして見て