# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  namespace :api, { format: 'json' } do
    namespace :v1 do
      resources :linebots
    end
  end
end
