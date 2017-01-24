class Product < ApplicationRecord

  def sale_message
    "Discount Item!" if price < 3 else "Everyday Value!"
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
