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
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :carted_products
  has_many :orders, through: :carted_products
  
  def discounted?
    price < 5
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def default_image
    if images.count > 0
      images.first.url
    else
      ""
    end
  end

end
