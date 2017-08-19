Rails.application.routes.draw do
  resources :documents do
    resources :respondents, only: [:new, :create]
  end

  namespace :response do
    resources :documents do
      post 'make_decision', on: :member
    end
  end

  devise_for :users
  get 'visitors/index'
  root to: 'visitors#index'

end
