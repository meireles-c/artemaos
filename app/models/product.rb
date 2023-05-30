class Product < ApplicationRecord
  has_many :orders
  belongs_to :user
  validates :name, :description, :stock, :category, :price, :product_url, presence: true
end
