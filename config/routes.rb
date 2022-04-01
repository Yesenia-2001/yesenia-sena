Rails.application.routes.draw do
  namespace :area do
    get 'programa/index'
  end
  namespace :programa do
    get 'area/index'
  end
  root to: 'main#home'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out'=> 'devise/sessions#destroy'
  end
  resources :areas do
    resources :programas, module: :areas
  end
  resources :main


  #For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end

