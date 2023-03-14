# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :code
      t.string :brand
      t.string :size
      t.integer :status, default: 0
      t.decimal :price
      t.string :description
      t.references :product_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
