Rails.application.routes.draw do

  devise_for :restaurants, controllers: {
    sessions:      'restaurants/sessions',
    passwords:     'restaurants/passwords',
    registrations: 'restaurants/registrations'
  }

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

  resources :users
  root to: "homes#index"
  
end
