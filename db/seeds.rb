require "open-uri"
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


product1 = Product.new(user: user1,
                           name: "Panela Cerâmica Branca Vale Do Jequitinhonha",
                           description: "O Vale do Jequitinhonha situa-se no norte do Estado de Minas Gerais, e já foi considerado uma das regiões mais pobres do Brasil, sendo a única região fora do Nordeste que está incluída no polígono das secas.",
                           category: "Decoração",
                           stock: 25,
                           price: 177.99,)
file1 = URI.open("https://cdn.leroymerlin.com.br/products/panela_ceramica_branca_vale_do_jequitinhonha__conceicao__1570049550_9d76_600x600.png")
product1.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
product1.save!

product2 = Product.new(user: user1,
                           name: "Manta De Algodão",
                           description: "Por tratar-se de peças artesanais, podem sofrer pequenas alterações de tamanho, peso ou alteração de cores, isso desde as peças até suas embalagens.",
                           category: "Decoração",
                           stock: 100,
                           price: 150.00,)

file2 = URI.open("https://cdn.leroymerlin.com.br/products/manta_de_algodao_vinho_1_80_x_1_50_1567862764_8188_600x600.jpg")
product2.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
product2.save!

product3 = Product.new(user: user2,
                           name: "Vaso com Flores em Cerâmica - Tita de Capela",
                           description: "Tita, Maria Cícera da Silva Siqueira, é irmã de Adriana de Capela e da mestre Sil, ceramista já reconhecida internacionalmente. Assim como seus pais e sua irmã Sil, Tita trabalhou por muitos anos em canavial.",
                           category: "Decoração",
                           stock: 10,
                           price: 410.00,)
file3 = URI.open("https://cdn.leroymerlin.com.br/products/vaso_com_flores_em_ceramica_tita_de_capela_1568156101_1604_600x600.png")
product3.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
product3.save!

product4 = Product.new(user: user3,
                           name: "Baianas Cerâmica Alto do Moura Nicinha Otília",
                           description: "Nicinha Otília é artesã e poeta de Caruarú/PE, e se refere ao barro como “ouro negro, minha caneta sem bico, porque com ele eu escrevo o que eu quiser, a poesia que eu quiser”.",
                           category: "Decoração",
                           stock: 20,
                           price: 20.50,)
file4 = URI.open("https://cdn.leroymerlin.com.br/products/baianas_ceramica_alto_do_moura_nicinha_otilia_amarelo_e_verde_1568156162_8ffb_600x600.png")
product4.photos.attach(io: file4, filename: "nes.png", content_type: "image/png")
product4.save!

product5 = Product.new(user: user3,
                           name: "Composição De Parede Caratinga",
                           description: "Definitivamente, a Composição de Parede Caratinga é personalidade em forma de decoração! Além das peças coloridas marcarem bastante presença, a Composição Caratinga leva peças que brincam com outras texturas e volumes, imprimindo muita personalidade à decoração.
                           Cor: Palha e Vinho. Material: Palha Natural de Carnaúba e Taquara. * Por ser uma peça feita a partir de matéria prima natural, podem haver variações na cor da palha e nos formatos das peças.",
                           category: "Decoração",
                           stock: 20,
                           price: 89.90,)
file5 = URI.open("https://cdn.leroymerlin.com.br/products/composicao_de_parede_caratinga_1567739152_dd1d_600x600.jpg")
product5.photos.attach(io: file5, filename: "nes.png", content_type: "image/png")
product5.save!

product6 = Product.new(user: user3,
                           name: "Luminária De Palha Aramada Pirâmide",
                           description: "Está pensando em repaginar seu ambiente e não sabe por onde começar? A gente pode te ajudar! Afinal, as luminárias estão com tudo na decoração e, com certeza, são capazes de mudar o ambiente completamente! A Luminária de Palha Aramada Pirâmide G - 40cm , sem dúvida, deixará seu ambiente muito sofisticado e elegante, sem contar toda a delicadeza desse artesanato!",
                           category: "Decoração",
                           stock: 20,
                           price: 89.90,)
file6 = URI.open("https://cdn.leroymerlin.com.br/products/luminaria_de_palha_aramada_piramide_g_40cm_1567671377_211e_600x600.jpg")
product6.photos.attach(io: file6, filename: "nes.png", content_type: "image/png")
product6.save!

product7 = Product.new(user: user2,
                           name: "Conjunto Itapuama",
                           description: "O Conjunto Itapuama faz parte da nossa tão esperada Coleção de Cerâmica, composta por peças feitas pelas mãos brilhantes do mestre artesão e ceramista Jair Monteiro. Nascido em Pernambuco em uma família de artesãos, a arte sempre esteve presente em sua vida e, desde pequeno, aprendeu a ver a beleza em objetos do cotidiano.",
                           category: "Decoração",
                           stock: 20,
                           price: 89.90,)
file7 = URI.open("https://cdn.leroymerlin.com.br/products/conjunto_itapuama_3_pecas_1567612176_4786_600x600.jpg")
product7.photos.attach(io: file7, filename: "nes.png", content_type: "image/png")
product7.save!

product8 = Product.new(user: user3,
                           name: "Bule De Café Amarelo Com 6 Canecas Coloridas",
                           description: "Por tratar-se de peças artesanais, podem sofrer pequenas alterações de tamanho, peso ou alteração de cores, isso desde as peças até suas embalagens. Qualquer dúvida estamos à disposição.",
                           category: "Decoração",
                           stock: 20,
                           price: 89.90,)
file8 = URI.open("https://cdn.leroymerlin.com.br/products/bule_de_cafe_amarelo_com_6_canecas_coloridas_1567739530_33cb_600x600.jpg")
product8.photos.attach(io: file8, filename: "nes.png", content_type: "image/png")
product8.save!

product9 = Product.new(user: user1,
                           name: "Quadro Decorativo Frida",
                           description: "A mistura das artes e das pessoas engrandece não só os propósitos dessas, mas molda de forma diferente o amor envolvido em todo esses movimentos. Poder enfeitar com carinho e afeto imagens que remetem a resistência e força é, em si, uma honra.",
                           category: "Decoração",
                           stock: 20,
                           price: 289.90,)
file9 = URI.open("https://cdn.leroymerlin.com.br/products/item_decorativo_1570679654_a9bb_600x600.jpg")
product9.photos.attach(io: file9, filename: "nes.png", content_type: "image/png")
product9.save!

product10 = Product.new(user: user3,
                            name: "Cesto Cunho 45 cm Etnia Mehinako - Xingú",
                            description: " Cesto em forma oval feito pelo povo Mehinako, trançado com o talo da palmeira buriti e fios de algodão/lã colorido. O cunho é um cesto amplamente utilizado pelos indígenas do Alto Xingú para pegar pequenos peixes na beira do rio ou para armazená-los durante a pesca do Timbó.",
                            category: "Decoração",
                            stock: 20,
                            price: 89.90,)
file10 = URI.open("https://cdn.leroymerlin.com.br/products/cesto_cunho_45_cm_etnia_mehinako_xingu___mod__13_1570896599_b81d_600x600.png")
product10.photos.attach(io: file10, filename: "nes.png", content_type: "image/png")
product10.save!

product11 = Product.new(user: user2,
                            name: "Sousplat Palha de Tucumã Colorida",
                            description: "Os Trançados com a palha do Tucumã são um resgate da cultura indígena ancestral nos modos de trabalhar artesanalmente as tramas e grafismos, produzindo objetos sofisticados de profunda raiz cultural.",
                            category: "Decoração",
                            stock: 20,
                            price: 99.90,)
file11 = URI.open("https://cdn.leroymerlin.com.br/products/sousplat_palha_de_tucuma_colorida_30cm_mod_9_1570820413_0cec_600x600.png")
product11.photos.attach(io: file11, filename: "nes.png", content_type: "image/png")
product11.save!

product12 = Product.new(user: user1,
                            name: "Cesto Cunho 45 cm Etnia Mehinako - Xingú",
                            description: " Os grafismos tem a inspiração na natureza que os cerca, podendo ser o desenho da pele da onça, o casco do jabuti entre outros.",
                            category: "Decoração",
                            stock: 20,
                            price: 263.00,)
file12 = URI.open("https://cdn.leroymerlin.com.br/products/cesto_cunho_45_cm_etnia_mehinako_xingu___mod__17_1570896587_c049_600x600.png")
product12.photos.attach(io: file12, filename: "nes.png", content_type: "image/png")
product12.save!

product13 = Product.new(user: user3,
                            name: "Colar Verde Crochê Casca De Jacarandá E Açaí Sanclau",
                            description: "Colar verde crochê casca de jacarandá e açaí sanclau ac   a fuchic brasil é uma empresa com seus princípios baseados no conceito do comércio justo que comercializa artesanato e arte brasileira desde 2006.",
                            category: "Decoração",
                            stock: 20,
                            price: 1589.90,)
file13 = URI.open("https://cdn.leroymerlin.com.br/products/colar_verde_croche_casca_de_jacaranda_e_acai_sanclau_ac_1570997756_4f5c_600x600.jpg")
product13.photos.attach(io: file13, filename: "nes.png", content_type: "image/png")
product13.save!

product14 = Product.new(user: user2,
                            name: "Moringa 1 L Serra Da Capivara Com Tampa E Copo",
                            description: "Moringa com designer único, com reproduções de desenhos rupestres encontrados no estado do piauí há mais de 20.000 anos, região que além de contar com mais antigos desenhos rupestres da américa, também possui a maior quantidade dessas pinturas no mundo.",
                            category: "Decoração",
                            stock: 20,
                            price: 229.90,)
file14 = URI.open("https://cdn.leroymerlin.com.br/products/moringa_1_l_serra_da_capivara_com_tampa_e_copo_cor_linha_a_1571125663_e303_600x600.jpg")
product14.photos.attach(io: file14, filename: "nes.png", content_type: "image/png")
product14.save!

product15 = Product.new(user: user1,
                            name: "Cumbuca Petisqueira",
                            description: "As cumbucas são feitas na casca do côco com técnicas de decoupagem com a aplicação de flores, folhas, frutas e pássaros, com finalização em resina. ",
                            category: "Decoração",
                            stock: 20,
                            price: 89.90,)
file15 = URI.open("https://cdn.leroymerlin.com.br/products/cumbuca_petisqueira_de_coco_pintada_mod__4_1570820407_9a10_600x600.png")
product15.photos.attach(io: file15, filename: "nes.png", content_type: "image/png")
product15.save!

Order.create!(user: user1, product: product4, quantity: 3)
Order.create!(user: user2, product: product1, quantity: 5)
Order.create!(user: user3, product: product2, quantity: 7)
