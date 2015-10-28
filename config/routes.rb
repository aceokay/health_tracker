Rails.application.routes.draw do
  devise_for :users

  resources :foods

  resources :home

  root :to => 'home#index'
end
