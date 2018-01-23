class CartsController < ApplicationController

  before_action :authenticate user!
  before_action :set_user
  def show
    @user = current_user
    @carts = current_user.carts
  end

  private

  def set_user

  end
end
