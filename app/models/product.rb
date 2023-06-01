class Product < ApplicationRecord
  has_many :orders
  belongs_to :user
  validates :name, :description, :stock, :category, :price, presence: true
  has_many_attached :photos
end
