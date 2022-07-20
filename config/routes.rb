Rails.application.routes.draw do
  resources :home
  devise_for :users
  resources :winemaker_winetasteds
  resources :winemakers
  resources :winetasteds
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
