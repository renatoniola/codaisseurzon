class Api::ProductsController < Api::BaseController
  skip_before_action :verify_authenticity_token

  def index
    render status: 200, json: {
      products: Product.all
    }.to_json
  end

  def show
    product = Product.find(params[:id])

    render status: 200, json: {
      product: product
    }.to_json
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
