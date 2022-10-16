class Pet < ApplicationRecord
  belongs_to :end_user
  has_many :records, dependent: :destroy
  has_many :foods, through: :records
  has_one_attached :pet_image
  
  def get_pet_image(width, height)
   unless pet_image.attached?
    file_path = Rails.root.join('app/assets/images/no_image.jpeg')
    pet_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
   end
    pet_image.variant(resize_to_limit: [width, height]).processed
  end
  
  validates :name, presence: true
  
  # def get_pet_image
  # if pet_image.attached?
  #     image
  #   else
  #     'no_image.jpg'
  #   end
  # end
  # end
  
  enum gender: { man: 0, woman: 1}
  
end
