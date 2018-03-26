class User < ApplicationRecord
  has_secure_password
  has_many :carted_products
  has_many :orders

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: /\w{2,}\@\w+\.\w{2,3}/, message: "only allows valid emails"}
  validates :name, presence: true
  validates :name, length: { minimum: 2 }

  def cart
    carted_products.where(status: "carted")
  end
end
