Rails.application.routes.draw do
  get '/index', to: 'articles#index'
  resources :articles, only: :index
  root 'articles#index'
end
