class CartsController < ApplicationController

  def index
    @cart = Cart.all
  end

  def new
    @product = Product.find(params[:product_id])
    @cart = Cart.new
  end

  def create
    @product = Product.find(params[:product_id])
    @cart = @product.carts.new(cart_params)
    @cart.user_id = current_user.id
    if @cart.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def addproduct
    @product = Product.find(params[:product_id])
  end

  private

  def cart_params
    params.require(:cart).permit(:quantity)
  end

end
