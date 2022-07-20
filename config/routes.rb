Rails.application.routes.draw do
  resources :winemaker_winetasteds
  resources :winemakers
  resources :winetasteds
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "winetasteds#index"
end
