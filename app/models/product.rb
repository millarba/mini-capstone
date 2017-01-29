class Product < ApplicationRecord

  # def sale_message
  #   if price < 3
  #     "Discount Item!" 
  #   else 
  #     "Everyday value!"
  #   end
  # end

  belongs_to :supplier
  has_many :images
  def discounted?
    price < 5
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
