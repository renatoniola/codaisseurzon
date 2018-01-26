class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :product


  validates :total, presence: true
  validates :count, presence: true
end
