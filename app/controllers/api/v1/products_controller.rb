# frozen_string_literal: true

module Api
  module V1
    class ProductsController < Api::V1::ApiController
      def index
        products = Product.all
        render status: :ok, json: products.map { |p| create_json(p) }
      end

      def query
        term = params[:id]
        products = Product.where('name LIKE ?', "%#{term}%")
        products = Product.where('description LIKE ?', "%#{term}%") unless products.any?
        render status: :ok, json: products.map { |p| create_json(p) }
      end

      private

      def create_json(product)
        p = product.as_json(except: %i[created_at updated_at])
        p[:image_url] = url_for(product.image) if product.image.attached?
        p
      end
    end
  end
end
