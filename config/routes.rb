Rails.application.routes.draw do
  get 'home/index'
  resources :pastes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "home#index"
end