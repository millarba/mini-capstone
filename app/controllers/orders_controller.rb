class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    carted_products = current_user.cart

    order = Order.create(user_id: current_user.id)
    carted_products.update_all(status: "purchased", order_id: order.id)
    order.calculate_totals
    

    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find(params[:id])
  end
end
