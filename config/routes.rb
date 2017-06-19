Rails.application.routes.draw do
  resources :users
  resources :admins
  resources :kredi_requests
  resources :kredis
  resources :payments

  post 'sign-in', to: 'sessions#create'
  delete 'sign-out', to: 'sessions#destroy'
end
