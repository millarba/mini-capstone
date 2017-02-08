class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :carted_products
  has_many :products, through: :carted_products

  # You could do this to remove all the logic from the controller and put it in here
  # That would be tricky because you mess with the initialize method in the super class
  # def initialize(options)
  #   super(options)
  #   calculate_all_totals
  # end

  # def calculate_subtotal 
  #   self.subtotal = product.price * quantity
  # end

  # def calculate_tax
  #   self.tax = subtotal * 0.09
  # end

  def calculate_totals
    subtotal = 0

    carted_products.each do |carted_product|
      subtotal += carted_product.subtotal
    end

    tax = subtotal * 0.09
    total = subtotal + tax
    update(subtotal: subtotal, tax: tax, total: total)
  end

end
