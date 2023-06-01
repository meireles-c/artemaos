class Product < ApplicationRecord
  has_many :orders
  belongs_to :user
  validates :name, :description, :stock, :price, :photos, presence: true
  has_many_attached :photos
  CATEGORY = ["Arte em Papel", "Brinquedos e Jogos Artesanais", "Cerâmica e Pottery", "Decoração", "Joias Artesanais", "Produtos para Cuidadas Pessoais", "Roupas e Acessórios"]
  validates :category, uniqueness: {scope: :user}
end
