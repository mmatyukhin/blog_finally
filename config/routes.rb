Rails.application.routes.draw do
  namespace :admin do
      resources :articles
      resources :users

      root to: "articles#index"
    end
  get '/index', to: 'articles#index'
  resources :articles
  root 'articles#index'
end
