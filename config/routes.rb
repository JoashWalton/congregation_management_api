Rails.application.routes.draw do
  resources :public_talks
  resources :public_speakers
  resources :kingdom_halls
  resources :field_service_groups
  resources :congregations
  resources :contact_informations
  resources :publishers
  devise_for :users
  root to: "souls#index"

  resources :souls
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
