Rails.application.routes.draw do
  root 'users#index'

  resources :users do
    resources :projects, only: [:new, :create]  # Nested routes for projects under users
  end

  resources :projects, only: [:index]
end
