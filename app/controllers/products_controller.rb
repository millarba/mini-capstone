class ProductsController < ApplicationController

  def one_product
    @products = Product.all
  end
end
