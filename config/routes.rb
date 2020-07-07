Rails.application.routes.draw do
  root to: "locations#home"
  
  resources :favorites
  resources :locations 
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
