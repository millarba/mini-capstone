class ProductsController < ApplicationController

  def one_product
    @products = Product.all
  end

  def all_products
    @products = Product.all
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
