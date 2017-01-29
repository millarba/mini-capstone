class SuppliersController < ApplicationController

  def index
    @suppliers = Supplier.all
  end

  # def new

  # end

  # def create
  #   @supplier = Supplier.new
  # end

end
