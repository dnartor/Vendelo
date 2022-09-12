Rails.application.routes.draw do

  namespace :authentication, path: '', as: '' do
    resources :users, only: [:new, :create], path: '/register', path_names: { new: '/' }
    resources :sessions, only: [:new, :create, :destroy], path: '/login', path_names: { new: '/' }
  end   
  resources :categories, except: :show
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :products, path: '/'
    #   Todo esto lo hace " resources :products "
  
  #   get '/products', to: 'products#index'
  #   post '/products', to: 'products#create'
  #   get 'products/new', to: 'products#new', as: :new_product
  #   get 'products/:id', to: 'products#show', as: :product
  #   patch '/products/:id', to: 'products#update'
  #   delete '/products/:id', to: 'products#destroy'
  #   get 'products/:id/edit', to: 'products#edit', as: :edit_product

  # Defines the root path route ("/")
  # root "articles#index"

end
