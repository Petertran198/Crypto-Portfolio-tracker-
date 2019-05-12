Rails.application.routes.draw do
  resources :crypto_portfolios
  devise_for :users
  root 'home#index'
  get '/about', to: 'home#about'
  get '/lookup', to: 'home#lookup'
  post '/lookup', to: 'home#lookup'
end
