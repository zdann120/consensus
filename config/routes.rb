Rails.application.routes.draw do
  resources :documents

  devise_for :users
  get 'visitors/index'
  root to: 'visitors#index'

end
