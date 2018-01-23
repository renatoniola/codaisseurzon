class Product < ApplicationRecord
  has_many :carts, dependent: :destroy
  has_many :users, through: :carts

  validates :name , presence: true
  validates :name , length: { maximum: 50 }
  validates :name , length: { minimum: 5 }
  validates :price , presence: true
  validates :name , uniqueness: true

end
