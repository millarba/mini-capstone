class ProductsController < ApplicationController

  def index
    @products = Product.all
  end


  def new

  end

  def create
    @product = Product.new(
                            name: params[:name],
                            price: params[:price],
                            color: params[:color],
                            description: params[:description]
      )
    @product.save
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name]
    @product.price = params[:price]
    @product.color = params[:color]
    @product.description = params[:description]

    @product.save
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
  end
end
