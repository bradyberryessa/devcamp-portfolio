Rails.application.routes.draw do
  devise_for :users
  resources :portfolios, except: [:show]

  #to: calls the controller#action and the as: changes the name of the prefix in rake routes
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do 
    member do
      get :toggle_status
    end
  end

  # for a 'to' directory, you always have to use the pound sign
  root to: 'pages#home'

end
