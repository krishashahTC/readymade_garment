class CartsController < ApplicationController

  def index
    @cart = Cart.all
  end

  def new
    @cart = Cart.new
  end

  def create
    @user = current_user
    @cart = @user.carts.create(cart_params)
    redirect_to root_path
  end

  private

  def cart_params
    params.require(:cart).permit(:price, :quantity)
  end

end
