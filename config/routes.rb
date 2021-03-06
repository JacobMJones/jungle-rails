Rails.application.routes.draw do

  root to: 'products#index'

  # get '/login', to: 'sessions#new'
  
  # resource :session, except: [:edit]

  get '/signup', to: 'users#new'
  post 'users', to: 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'



resources :products do
  resources :reviews, only: [:create ]
end


  resources :products, only: [:index, :show]
  resources :categories, only: [:show]

  resource :cart, only: [:show] do
    put    :add_item
    delete :remove_item
  end

  resources :orders, only: [:create, :show]

  namespace :admin do
    root to: 'dashboard#show'
    resources :products, except: [:edit, :update, :show]
    resources :categories, only: [:index, :new, :create]
  end
end
