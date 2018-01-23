require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'validations' do
    it 'is invalid without a name' do
      product = Product.new(name: '')
      product.valid?
      expect(product.errors).to have_key(:name)
    end

    it 'is invalid without a price' do
      product = Product.new(price: nil)
      product.valid?
      expect(product.errors).to have_key(:price)
    end

    it 'is invalid with a name of product longer than 50 characters' do
      product = Product.new(name: 'a' * 51)
      product.valid?
      expect(product.errors).to have_key(:name)
    end

    it 'is invalid with a name of product shorter than 5 characters' do
      product = Product.new(name: 'affd')
      product.valid?
      expect(product.errors).to have_key(:name)
    end

    it "it should be unique" do
      prod1 = Product.create(name: 'whatever' , price: 10)
      prod2 = Product.create(name: 'whatever', price: 12)

      prod2.valid?
      expect(prod2.errors).to have_key(:name)
    end
  end
end
