Rails.application.routes.draw do
  devise_for :users
  get 'visitors/index'

end
