Rails.application.routes.draw do
  resources :varietals
  resources :appellations
  resources :producers
  resources :bottles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
