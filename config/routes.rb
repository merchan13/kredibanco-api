Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  resources :users

  post 'sign-in', to: 'sessions#create'
  delete 'sign-out', to: 'sessions#destroy'
end
