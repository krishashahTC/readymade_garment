class HomeController < ApplicationController
  
  def index
    @products = Product.all
    @cart = Cart.new
  end

  def newseller
  end

end
