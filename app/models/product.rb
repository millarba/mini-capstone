class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :carted_products
  has_many :orders, through: :carted_products
  
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :description, length: { in: 3..300 }

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
