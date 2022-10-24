class Genre < ApplicationRecord
 has_many :food_genres, dependent: :destroy
 has_many :foods, through: :food_genres, dependent: :destroy
 
 # validates :name, presence: true
 
end


# rails g model Food_genre food:references genre:references