Rails.application.routes.draw do
  root to: 'pages#home'

  get '/team', to: "pages#team"
  get '/about', to: "pages#about"

  resources :products
end
