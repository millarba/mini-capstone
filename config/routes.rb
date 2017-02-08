Rails.application.routes.draw do
  get '/' => 'products#index'
  get '/products' => 'products#index'

  get '/products/new' => 'products#new'
  post '/products' => 'products#create'
  post '/search' => 'products#search'

  get '/products/random' => 'products#random'

  get '/products/:id' => 'products#show'

  get '/products/:id/edit' => 'products#edit'
  patch '/products/:id' => 'products#update'

  delete '/products/:id' => 'products#destroy'

  get '/suppliers' => 'suppliers#index'

  get '/suppliers/new' => 'suppliers#new'
  post '/suppliers' => 'suppliers#create'

  get '/products/:product_id/images/new' => 'images#new'
  post '/products/:product_id/images' => 'images#create'

  get '/signup' => 'users#new'
  post '/users' => 'users#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

  post '/cart' => 'carted_products#create'
  get '/cart' => 'carted_products#index'
  delete '/remove/:id' => 'carted_products#destroy'

end
