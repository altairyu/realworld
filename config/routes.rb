Rails.application.routes.draw do
  get 'home/index'
  namespace :api do
    resources :articles, param: :slug, only: [:create, :show, :update, :destroy]
  end
end
