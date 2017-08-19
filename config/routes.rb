Rails.application.routes.draw do
  resources :documents do
    resources :respondents, only: [:new, :create]
  end

  devise_for :users
  get 'visitors/index'
  root to: 'visitors#index'

end
