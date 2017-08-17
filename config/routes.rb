Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :cities
  resources :cruises
  resources :ships do
    resources :cabins
  end
end