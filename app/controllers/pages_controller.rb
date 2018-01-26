class PagesController < ApplicationController

  def index
    if @shopping_cart.nil?
      @shopping_cart = ShoppingCart.new(session)
    end
    
    @products = if params[:term]
      Product.where('name LIKE ?', "%#{params[:term]}%")
    else
      Product.all
    end
  end


end
