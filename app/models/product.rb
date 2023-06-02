class Product < ApplicationRecord
  has_many :orders
  belongs_to :user
  validates :name, :description, :stock, :price, :photos, presence: true
  # validates_presence_of :photos, on: :new
  has_many_attached :photos
  CATEGORY = ["Cestarias", "Enfeites", "Cozinha", "Cerâmica", "Decoração", "Vasos", "Luminárias", "Bordados", "Descontos"]

  validates_numericality_of :price, greater_than_or_equal_to: 0
  validates_numericality_of :stock, greater_than_or_equal_to: 0
end
