# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  devise_scope :user do
    unauthenticated :user do
      root 'devise/sessions#new', as: :unauthenticated_root
    end

    authenticated :user do
      root 'projects#index'
    end
  end

  resources :projects, only: %i[index show update] do
    resources :comments, only: %i[new create]
  end
end
