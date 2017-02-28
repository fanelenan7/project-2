Rails.application.routes.draw do
  devise_for :users
  root to:"submissions#index"
  resources :submissions do
    resources :comments
  end
  resources :albums
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
