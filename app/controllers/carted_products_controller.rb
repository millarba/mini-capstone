class CartedProductsController < ApplicationController

  def create
    @carted_product = CartedProduct.create(user_id: params[:user_id],
                                          product_id: params[:product_id],
                                          quantity: params[:quantity],
                                          status: "carted"
                                          )
  end

  def index
    @carted_products = CartedProduct.where("user_id ?", "status ?", session[:user_id], "carted")
  end

  def destroy
    @carted_product = CartedProduct.find(params[:id])
    @carted_product.status = "removed"
    redirect_to 
  end
end
