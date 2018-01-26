class Api::ShoppingCartController < Api::BaseController
  skip_before_action :verify_authenticity_token

  def show
    shopping_cart = ShoppingCart.find(params[:id])

    render status: 200, json: {
      shopping_cart: shopping_cart
    }.to_json
  end
  def create
    shopping_cart ||= ShoppingCart.new(shopping_cart_params)

    @product = Product.find(params[:product])

    if shopping_cart.add_product(@product)
      render status: 201, json: {
        message: "ShoppingCart successfully created",
        shopping_cart: shopping_cart
      }.to_json
    else
      render status: 422, json: {
        errors: shopping_cart.errors
      }.to_json
    end
  end


  def destroy
    shopping_cart = ShoppingCart.find(params[:id])
    shopping_cart.destroy

    render status: 200, json: {
      message: "Shopping cart successfully deleted"
    }.to_json
  end

  private

  def shopping_cart_params
    params.require(:shopping_cart).permit(:session, :order_line, :product)
  end
end
