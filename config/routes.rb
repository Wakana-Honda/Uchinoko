Rails.application.routes.draw do
  resources:genres,only:[:index,:edit,:update,:destroy]
  resources:types,only:[:index,:edit,:update,:destroy]
  resources:records
  resources:foods
  
  get 'pet/new'
  post 'pet/create'
  get '/pet_page'=>"pet#index"
  get '/pet_information'=>"pet#show"
  get 'pet/edit'
  patch 'pet/update'
  delete 'pet/destroy'
  
  get 'homes/top'
  devise_for :end_users
  root to:'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
