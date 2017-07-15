class Product < ApplicationRecord
  validates :name, :description, :image, :presence =>true
  validates :price, numericality: true, :presence => true
  has_many :order_items
end
