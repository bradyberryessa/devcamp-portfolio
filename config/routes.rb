Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
  #to: calls the controller#action and the as: changes the name of the prefix in rake routes
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'tech-news', to:'pages#tech_news'

  resources :blogs do 
    member do
      get :toggle_status
    end
  end

  # for a 'to' directory, you always have to use the pound sign
  root to: 'pages#home'

end
