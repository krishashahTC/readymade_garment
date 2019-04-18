Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :home, only: [:index, :newseller]
  resources :admin, only: [:index]

  resources :users do
    resources :profile
  end

  resources :sellers, only: [:index]
  
  resources :categories do
    resources :sub_categories
  end

  resources :products
  resources :colors
  resources :size
  get '/newseller', to: 'home#newseller'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
