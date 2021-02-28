# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users,
             controllers: { registrations: 'registrations',
                            sessions: :sessions }
  root 'top#index'

  resources :users, only: %i[show index]
  resources :reactions, only: [:create]
end
