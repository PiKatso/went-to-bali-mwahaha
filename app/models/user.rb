class User < ApplicationRecord
  validates :name, :email, :password_digest, :admin, :presence => true
  has_secure_password
  has_many :orders

  def previous_orders
    self.orders.where(status: 2).includes(order_items: :product)
  end
end
