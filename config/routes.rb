Rails.application.routes.draw do

  devise_for :users
  root 'welcome#index'

  resources :registered_applications, only: [:index, :show, :new, :create, :destroy]
  resources :events

end
