class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates_numericality_of :quantity, greater_than_or_equal_to: 1
end
