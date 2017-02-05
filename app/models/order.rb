class Order < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :product
  has_many :carted_products

  # You could do this to remove all the logic from the controller and put it in here
  # That would be tricky because you mess with the initialize method in the super class
  # def initialize(options)
  #   super(options)
  #   calculate_all_totals
  # end

  def calculate_subtotal 
    self.subtotal = product.price * quantity
  end

  def calculate_tax
    self.tax = subtotal * 0.09
  end

  def calculate_total
    self.total = tax + subtotal
  end

  def calculate_all_totals
    calculate_subtotal
    calculate_tax
    calculate_total
  end
end
