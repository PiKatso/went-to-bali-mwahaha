class OrderItem < ApplicationRecord
  validates :quantity, numericality: true, :presence => true
  belongs_to :order
  belongs_to :product
end
