class ShoppingCartController < ApplicationController
  def index
  end

  def create
    product = Product.find(params[:product_id])
    amount = params[:amount]

    if shopping_cart.add_product(product, amount)
    else
    end
  end

  def destroy
  end
end
