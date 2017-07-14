class Product < ApplicationRecord
  validates :name, :description, :presence =>true
  validates :price, numericality: true, :presence => true
  has_many :order_items
end
