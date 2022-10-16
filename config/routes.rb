Rails.application.routes.draw do
  devise_for :end_users
  
  root to:'homes#top'
  
  resources:genre,only:[:index,:create,:edit,:update,:destroy]
  resources:type,only:[:index,:create,:edit,:update,:destroy]
  resources:record
  resources:food
  resources:pet
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
