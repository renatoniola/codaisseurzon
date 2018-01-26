class ProductsController < ApplicationController
  before_action :set_product ,only: [ :show ]

  def index
    @products = if params[:term]
      Product.where('name LIKE ?', "%#{params[:term]}%")
    else
      Product.all
    end
  end

  def show;end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :term)
  end
end
