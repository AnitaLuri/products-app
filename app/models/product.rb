# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :product_category

  has_one_attached :image
end
