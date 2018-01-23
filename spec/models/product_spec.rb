require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      product = Product.new(name: "")
      product.valid?
      expect(product.errors).to have_key(:name)
    end

    it "is invalid without a price" do
      product = Product.new(price: nil)
      product.valid?
      expect(product.errors).to have_key(:price)
    end

    it "is invalid with a name of product longer than 50 characters" do
      product = Product.new(name: "a*51")
      product.valid?
      expect(event.errors).to have_key(:name)
    end
  end

  it "is invalid with a name of product shorter than 5 characters" do
    product = Product.new(name: "a*3")
    product.valid?
    expect(event.errors).to have_key(:name)
  end
end
end
