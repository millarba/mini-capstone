class OrdersController < ApplicationController

  def create

    order_products = User.find(session[:id]).carted_products.where(status: "carted")
    subtotal = order_products.product.price * order_products.quantity
    tax = subtotal * 0.09
    total = subtotal + tax

    @order = Order.new(user_id: current_user.id, 
                       subtotal: subtotal,
                       tax: tax,
                       total: total
                          )

    # @order.calculate_subtotal
    # @order.calculate_tax
    # @order.calculate_total
    @order.save



    order_products.status = "purchased"
    redirect_to "/orders/#{@order.id}"
  end

  def show
    @order = Order.find(params[:id])
    @purchased_orders = CartedProduct.where(order_id: params[:id] AND status: "purchased")
  end
end
