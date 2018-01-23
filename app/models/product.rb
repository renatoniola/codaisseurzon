class Product < ApplicationRecord
  has_many :carts, dependent: :destroy
  has_many :users, through: :carts
end
