class ProductsController < ApplicationController
  def index
    @category = Category.all
  end 
end
