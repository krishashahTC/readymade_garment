Rails.application.routes.draw do
  get 'admin/index'
  root 'home#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :home
  resources :admin
  resources :users do
    resources :profile
  end
  get '/seller', to: 'home#seller'
  post '/seller', to: 'home#seller'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
