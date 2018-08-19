Rails.application.routes.draw do
  get '/index', to: 'articles#index'
  resources :articles
  root 'articles#index'
end
