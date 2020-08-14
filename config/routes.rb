Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'materials/create'
  devise_for :users

  root 'top#index'
  resources :cocktails, only: [:new, :create, :index, :show] do
    resources :materials, only: [:new, :create]
  end
  resources :users, only: [:show, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
