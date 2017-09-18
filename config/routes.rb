Rails.application.routes.draw do
  
  root 'static_pages#index'

  resources :families, only: [:new, :index, :show, :create]
  resources :members, only: [:new, :index, :show, :create]
  
end
