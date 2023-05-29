class Product < ApplicationRecord
  has_many :orders
  belongs_to :user
  monetize :price_cents
end
