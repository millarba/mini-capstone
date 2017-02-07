class CartedProductsController < ApplicationController

  def index
    # @carted_products = CartedProduct.where("user_id = ? AND status = ?", "#{current_user.id}" ,"carted")
    @carted_products = current_user.cart
  end

  def create
    @carted_product = CartedProduct.new(user_id: session[:user_id],
                                          product_id: params[:product_id],
                                          quantity: params[:quantity],
                                          status: "carted"
                                          )
    @carted_product.save
    flash[:success] = "Products added to cart"
    redirect_to "/cart"
  end

  def destroy
    @carted_product = CartedProduct.find(params[:id])
    @carted_product.update(status: "removed")
    redirect_to '/cart'
  end
end
