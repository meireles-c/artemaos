class User < ApplicationRecord
  has_many :orders
  has_many :products
  has_many :sold_products, through: :orders, source: :product
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
