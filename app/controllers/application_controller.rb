class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :calculate_cart_count

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authenticate_user!
    redirect_to '/login' unless current_user
  end

  def carted_items
    @carted_items ||= CartedProduct.where(status: "carted")
  end
  helper_method :carted_items

private

  def calculate_cart_count
    @cart_count = current_user.cart.length
  end
  
end
