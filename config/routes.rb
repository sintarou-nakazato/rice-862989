Rails.application.routes.draw do
  devise_for :users
  get 'foods/index'
  root to: "foods#index"
  resources :foods, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
