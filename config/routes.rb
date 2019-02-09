Rails.application.routes.draw do
  get 'restaurants', to: 'restaurants#index'
  post 'restaurants', to: 'restaurants#create'

  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurants

  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurants

  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  patch 'restaurants/:id', to: 'restaurants#update'
  delete 'restaurants/:id', to: 'restaurants#destroy'
end
