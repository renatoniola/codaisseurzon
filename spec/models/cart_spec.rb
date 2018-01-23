require 'rails_helper'

RSpec.describe Cart, type: :model do
  describe "validations" do

    it "is invalid without a total" do
      cart = Cart.new(total: nil)
      cart.valid?
      expect(cart.errors).to have_key(:total)
    end

    it "is invalid without a sign_in_count" do
      cart = Cart.new(count: nil)
      cart.valid?
      expect(cart.errors).to have_key(:total)
    end
  end
end
