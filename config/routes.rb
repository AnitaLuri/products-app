# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :products, only: [:index] do
        get 'query', on: :collection
      end
    end
  end
end
