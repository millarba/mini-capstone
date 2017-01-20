Rails.application.routes.draw do
  get '/' => 'products#index'
  get '/products' => 'products#index'
  get '/products/:id' => 'products#show'

  get '/add_product_form' => 'products#add_product'
  post '/add_product_form' => 'products#product_success'
end
