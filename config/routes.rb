Rails.application.routes.draw do
  get '/one_product' => 'products#one_product'
  get'/product_list' => 'products#all_products'

  get '/add_product_form' => 'products#add_product'
  post '/add_product_form' => 'products#product_success'
end
