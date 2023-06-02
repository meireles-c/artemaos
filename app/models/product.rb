class Product < ApplicationRecord
  has_many :orders
  belongs_to :user
  validates :name, :description, :stock, :price, :photos, presence: true
  # validates_presence_of :photos, on: :new
  has_many_attached :photos
  CATEGORY = ["Cestarias", "Enfeites", "Cozinha", "Cerâmica", "Decoração", "Vasos", "Luminárias", "Bordados"]
end
