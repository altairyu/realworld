Rails.application.routes.draw do
  root to: 'home#index'

  namespace :api do
    resources :articles, param: :slug, only: [:create, :show, :update, :destroy]
  end
end
