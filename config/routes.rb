Rails.application.routes.draw do
  devise_for :users
  root 'questions#index'

  resources :questions, :only => [:index, :new, :create]
  resources :votes, :only => :create
end
