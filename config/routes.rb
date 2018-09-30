Rails.application.routes.draw do
  get 'registrations/devise'
  devise_for :users, :controllers => { registrations: 'registrations' }
  devise_for :admins
  namespace :admins do
      resources :articles
      resources :users
      resources :comments

      root to: "articles#index"
    end
  get '/index', to: 'articles#index'
  resources :articles do
    resources :comments, only: :create
  end
  root 'articles#index'
  mount_simpleadmin
end
