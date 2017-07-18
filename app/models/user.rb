class User < ApplicationRecord
  validates :name, :presence => true
  validates :email, presence: true, uniqueness: true
  validates :password, :password_confirmation, presence: true
  validates :password, length: { minimum: 6, maximum: 10 }
  validates :password, :format => {:with => /\A(?=.*[a-zA-Z])(?=.*[0-9]).{6,10}\z/}
  # must contain upper and lowercase letter, number
  has_secure_password
  has_many :orders

  def previous_orders
    self.orders.where(status: 2).includes(order_items: :product)
  end
end
