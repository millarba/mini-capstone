class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_product

  end

  def product_success
    @product = Product.new(
                            name: params["name"],
                            price: params["price"],
                            color: params["color"],
                            description: params["description"]
      )
    @product.save
  end
end
