class ProductsController < ApplicationController
  
  before_action :find_category, only: [:new, :edit]
  before_action :find_product, only: [:show, :edit, :update, :destroy]
  def index
    @products = Product.all
  end

  def new
    @sub_categories = SubCategory.where("category_id = ?", Category.first.id)
    @colors = Color.all
    @size = Size.all
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    redirect_to products_path
  end

  def show
    @colors = @product.colors
  end

  def edit
    @sub_categories = SubCategory.where("category_id = ?", Category.first.id)
    @colors = Color.all
    @size = Size.all
  end
  
  def update
    @product.update(product_params)
    redirect_to products_path
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private
  
  def product_params
    params.require(:product).permit(:sub_category_id, :name, :price, :quantity, images: [], size_ids: [], color_ids: [])
  end

  def find_product
    @product = Product.find(params[:id])
  end

  def find_category
    @category = Category.all
  end

end
