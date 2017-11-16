Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/team', to: "pages#team"
  get '/about', to: "pages#about"

  resources :products
  resources :upvotes, only: [ :create, :destroy]
end
