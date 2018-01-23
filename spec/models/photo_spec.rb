require 'rails_helper'

RSpec.describe Photo, type: :model do

  describe "association with product" do
    let(:product) { create :product }

    it "belongs to an artist" do
      photo = product.photos.build

      expect(photo.product).to eq(product)
    end
  end

end
