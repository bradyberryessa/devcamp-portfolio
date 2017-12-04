Rails.application.routes.draw do
  resources :portfolios

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs

  # for a root directory, you always have to use the pound sign
  root to: 'pages#home'

end
