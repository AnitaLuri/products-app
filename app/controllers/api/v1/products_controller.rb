class Api::V1::ProductsController < ApplicationController
  def index
    products = Product.all
    render status: :ok, json: products.map { |p| create_json(p) }
  end

  private

  def create_json(product)
    p = product.as_json(except: %i[created_at updated_at])
    p[:image_url] = url_for(product.image) if product.image.attached?
    p
  end
end