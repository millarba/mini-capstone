class Product < ApplicationRecord

  # def sale_message
  #   if price < 3
  #     "Discount Item!" 
  #   else 
  #     "Everyday value!"
  #   end
  # end

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
