# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admins

  namespace :admin do
    resources :questions
  end
  post '/calculateResult' => 'home#calculate_result', :as => :calculate_result
  unauthenticated do
    root 'home#index'
  end
  authenticated :admin do
    root 'admin/questions#index', as: :authenticated_root
  end
end
