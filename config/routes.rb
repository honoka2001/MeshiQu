# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :restaurants, controllers: {
    sessions: 'restaurants/sessions',
    passwords: 'restaurants/passwords',
    registrations: 'restaurants/registrations'
  }

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  resources :users
  resources :restaurants

  resources :coupons do
    resources :checks, only: %i[create destroy]
  end

  resources :events do
    resource :participates, only: %i[create destroy]
  end

  root to: 'homes#index'
end
