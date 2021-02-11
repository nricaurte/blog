Rails.application.routes.draw do
  resources :categories
  resources :comments
  resources :articles
  root 'articles#index'
  devise_for :users
end
