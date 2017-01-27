class ProductsController < ApplicationController

  def index
    @products = Product.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discount_amount = params[:discount]

  if discount_amount
    @products = @products.where("price < ?", discount_amount)
  end

  if sort_attribute && sort_order
    @products = @products.order(sort_attribute => sort_order)
  elsif sort_attribute
    @products = @products.order(sort_attribute)
  end

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
    flash[:success] = "Product Created Successfully."
    redirect_to "/products/#{@product.id}"
  end

  def show
    # if params[:id] == "random"
    #   @product = Product.all.order("RANDOM()").first
    #   # this also works, much easier to understand, but not as fast
    #   # @product = Product.all.sample
    # else
    if params[:id] == "random"
      product = Product.all.sample
      redirect_to "/products/#{product.id}"
    else
      @product = Product.find(params[:id])
    end
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
    flash[:info] = "Product Updated Successfully."
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:warning] = "Product Removed Successfully."
    redirect_to "/products"
  end

  def random
    product = Product.all.sample
    redirect_to "/products/#{product.id}"
  end

  def search
    search_term = params[:search_term]
    @products = Product.where("name iLIKE ? OR description iLIKE ? OR color iLIKE ?", "%#{search_term}%", "%#{search_term}%", "%#{search_term}%")
    render :index
  end
end
