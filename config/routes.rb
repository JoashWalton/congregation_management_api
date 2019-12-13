Rails.application.routes.draw do
  resources :contact_informations
  resources :publishers
  devise_for :users
  root to: "home#index"

  resources :souls
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
