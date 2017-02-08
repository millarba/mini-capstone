class ProductsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]

  def index
    @products = Product.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discount_amount = params[:discount]
    category_type = params[:category]
    
    if discount_amount
      @products = @products.where("price < ?", discount_amount)
    end

    if category_type
      category = Category.find_by(name: category_type)
      @products = category.products
    end

    if sort_attribute && sort_order
      @products = @products.order(sort_attribute => sort_order)
    elsif sort_attribute
      @products = @products.order(sort_attribute)
    end

  end


  def new
    @product = Product.new
  end

  def create
      @product = Product.new(
                              name: params[:name],
                              price: params[:price],
                              color: params[:color],
                              description: params[:description],
                              supplier_id: params[:supplier][:supplier_id]
                              )
      if @product.save
        flash[:success] = "Product Created Successfully."
        redirect_to "/products/#{@product.id}"
      else
        render :new
      end
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
    redirect_to '/index'
  end

end
