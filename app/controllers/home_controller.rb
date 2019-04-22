class HomeController < ApplicationController
  
  def index
    @products = Product.all
    @cart = Cart.new
  end

  def newseller
  end

  def show
    @product = Product.find(params[:product_id])
  end

  def addproduct
    @product = Product.find(params[:product_id])
  end
end
