# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admins
  resources :home
  namespace :admin do
    resources :questions
  end
  unauthenticated do
    root 'home#index'
  end
  authenticated :admin do
    root 'admin/questions#index', as: :authenticated_root
  end
end
