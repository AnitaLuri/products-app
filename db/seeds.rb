category = ProductCategory.create!(name: 'Acessórios')

product_a = Product.create!(name: 'Toalha de Microfibra', code: '8543246', size: 'M', status: 'disponivel',
                            price: 70.00, description: 'Toalha de microfibra tamanho médio. Prática, compacta e com boa absorção.',
                            product_category: category)
image_path_a = Rails.root.join('spec/support/images/toalha.jpeg')
product_a.image.attach(io: image_path_a.open, filename: 'toalha.jpeg')
product_b = Product.create!(name: 'Garrafa de trilha 600ml', code: '5976423', size: 'U', status: 'disponivel',
                            price: 50.00, description: 'Garrafa abre facil com suporte e medida',
                            product_category: category)
image_path_b = Rails.root.join('spec/support/images/garrafa.jpeg')
product_b.image.attach(io: image_path_b.open, filename: 'garrafa.jpeg')
product_c = Product.create!(name: 'Mochila', code: '8524569', size: 'U', status: 'disponivel',
                            price: 180.00, description: 'Mochila para trilha cinza',
                            product_category: category)
image_path_c = Rails.root.join('spec/support/images/mochila.jpeg')
product_c.image.attach(io: image_path_c.open, filename: 'mochila.jpeg')