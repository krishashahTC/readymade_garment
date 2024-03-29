class CategoriesController < ApplicationController
  before_action :find_category, only: [:edit, :update, :destroy]
  
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
      respond_to do |format|
        format.html
        format.js
      end
  end

  def create
    @category = Category.create(category_params)
    redirect_to categories_path
  end

  def edit
  end

  def update
    @category.update(category_params)
    redirect_to categories_path
  end

  def destroy
    @category.destroy
    redirect_to categories_path
  end

  private

  def find_category 
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :description)
  end
end

