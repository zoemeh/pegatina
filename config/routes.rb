Rails.application.routes.draw do
  get 'home/index'
  get "/about", to: "home#about"
  resources :pastes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "home#index"
end