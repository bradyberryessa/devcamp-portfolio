Rails.application.routes.draw do
  resources :portfolios, except: [:show]

  #to: calls the controller#action and the as: changes the name of the prefix in rake routes
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs

  # for a 'to' directory, you always have to use the pound sign
  root to: 'pages#home'

end
