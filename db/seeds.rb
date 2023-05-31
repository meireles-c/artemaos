Order.destroy_all
Product.destroy_all
User.destroy_all

user1 = User.create!(name: "Ana Silva",
                     profile: "artesão",
                     email: "artesao1@example.com",
                     password: "senha1",
                     address: "Rua das Artes, 123")
user2 = User.create!(name: "Maria Santos",
                     profile: "artesã",
                     email: "artesa2@example.com",
                     password: "senha2",
                     address: "Avenida do Artesanato, 456")
user3 = User.create!(name: "Carlos Oliveira",
                     profile: "amante de artesanato",
                     email: "amanteartesanato3@example.com",
                     password: "senha3",
                     address: "Praça das Artes, 789")


product1 = Product.create!(user: user1,
                           name: "Tigela Marajoara",
                           description: "Feita por indígenas",
                           category: "Decoração",
                           stock: 25,
                           price: 134.99,
                          )

product2 = Product.create!(user: user1,
                           name: "Aplique em MDF Buda",
                           description: "Aplique Buda em MDF cru, pode ser utilizado como decoração em caixas, acrescentado em paredes junto com outras molduras e quadros com fotos, espelhos, deixando o ambiente mais encantador.",
                           category: "Decoração",
                           stock: 100,
                           price: 4.00,
                          )

product3 = Product.create!(user: user2,
                           name: "Leão deitado de amigurum em crochê",
                           description: "Confeccionado com linha 100% algodão; Enchimento com fibra siliconada anti-alérgica; Olhos com tracas de segurança",
                           category: "Decoração",
                           stock: 10,
                           price: 150.00,
                          )

product4 = Product.create!(user: user3,
                           name: "Quadro Decorativo Com Vidro Gratidão Significado",
                           description: "Cores disponíveis da moldura: Branco, Preto e Carvalho; Espessura da moldura: 2cm largura x 1cm profundidade; Tamanho da imagem: 30x40cm (formato A3); Dimensão do quadro: 34cm largura x 44cm altura (medida total com moldura); Peso do quadro: aproximadamente 1,2kg.",
                           category: "Decoração",
                           stock: 20,
                           price: 89.90,
                          )

Order.create!(user: user1, product: product4, quantity: 3)
Order.create!(user: user2, product: product1, quantity: 5)
Order.create!(user: user3, product: product2, quantity: 7)
