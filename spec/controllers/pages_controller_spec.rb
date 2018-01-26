require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  def index
  @products = if params[:term]
      Product.where('name LIKE ?', "%#{params[:term]}%")
    else
      Product.all
    end
  end
  
end
