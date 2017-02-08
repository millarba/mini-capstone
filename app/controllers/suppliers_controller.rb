class SuppliersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @suppliers = Supplier.all
  end

  # def new

  # end

  # def create
  #   @supplier = Supplier.new
  # end

end
