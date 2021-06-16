Rails.application.routes.draw do
  devise_for :users
  get 'foods/index'
  root to: "foods#index"
  resources :foods, only: [:new, :create]
end
