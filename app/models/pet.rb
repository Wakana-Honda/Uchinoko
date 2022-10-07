class Pet < ApplicationRecord
  belongs_to :end_user
  has_one_attached :pet_image
  
  def get_pet_image(width, height)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpeg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
      image.variant(resize_to_limit: [width, height]).processed
  end
  
  enum gender: { man: 0, woman: 1}
  
end
