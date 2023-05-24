Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  # List all restaurants
  get 'restaurants', to: 'restaurants#index'

  # Add a new restaurant
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'

  # Show details of a restaurant with its reviews
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'

  # Add a new review to a restaurant
  get 'restaurants/:id/reviews/new', to: 'reviews#new', as: 'new_review'
  post 'restaurants/:id/reviews', to: 'reviews#create', as: 'restaurant_reviews'
end
