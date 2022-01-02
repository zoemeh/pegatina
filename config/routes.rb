Rails.application.routes.draw do
  get "/about", to: "home#about"
  get "/recent", to: "home#recent"
  resources :pastes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "home#index"
end