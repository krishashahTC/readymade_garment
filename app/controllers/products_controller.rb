class ProductsController < ApplicationController
  
  before_action :find_category_color_size, only: [:new, :edit]
  before_action :find_product, only: [:show, :edit, :update, :destroy]
  def index
    @user = current_user
    @products = @user.products
  end

  def new
    # @sub_categories = SubCategory.where("category_id = ?", Category.first.id)
    @product = Product.new
    respond_to do |format|
      format.html { }
      format.js { }
    end  
  end

  def create
    @user = current_user
    @product = @user.products.new(product_params)
    @product.save
    redirect_to products_path
  end

  def show
    @colors = @product.colors
  end

  def edit
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
    params.require(:product).permit(:category_id, :sub_category_id, :name, :price, :quantity, images: [], size_ids: [], color_ids: [])
  end

  def find_product
    @product = Product.find(params[:id])
  end

  def find_category_color_size
    @category = Category.all
    @colors = Color.all
    @size = Size.all
  end

end
