require 'rails_helper'

describe 'API de produtos' do
  context 'GET/api/v1/products' do
    it 'lista de todos os produtos' do
      category = ProductCategory.create!(name: 'Acessórios')
      product_a = Product.create!(name:'Toalha de Microfibra', code:'8543246', size:'M', status:'disponivel',
                                price:70.00, description:'Toalha de microfibra tamanho médio. Prática, compacta e com boa absorção. 80x130cm',
                                product_category: category)
      image_path = Rails.root.join('spec/support/images/toalha.jpeg')
      product_a.image.attach(io: image_path.open, filename: 'toalha.jpeg')
      Product.create!(name:'Garrafa de trilha 600ml', code:'5976423', size:'U', status:'disponivel',
                      price:50.00, description:'Garrafa abre facil com suporte e medida',
                      product_category: category)

      get '/api/v1/products'

      expect(response.status).to eq 200
      expect(response.content_type).to include 'application/json'
      json_response = JSON.parse(response.body)
      expect(json_response.length).to eq 2
      expect(json_response[0]['name']).to eq 'Toalha de Microfibra'
      expect(json_response[1]['name']).to eq 'Garrafa de trilha 600ml'
      expect(json_response[0].keys).to include('image_url')
    end
  end
end