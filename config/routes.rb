Rails.application.routes.draw do
  root to: "locations#home"
  
  resources :favorites 
  # do
  #   collection do
  #     delete 'destroy_multiple'
  #   end
  # end
  resources :locations 
  resources :users 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
