class SubCategoriesController < ApplicationController

  before_action :find_MainCategory
  before_action :find_sub_category, only: [:edit, :update, :destroy]
  def index
    @sub_categories = @category.sub_categories
  end

  def new
    @sub_category = SubCategory.new
  end

  def create
    @sub_category = @category.sub_categories.create(subcategory_params)
    redirect_to category_sub_categories_path(@category)
  end

  def edit
  end

  def update
    @sub_category.update(subcategory_params)
    redirect_to category_sub_categories_path(@category)
  end

  def destroy
    @sub_category.destroy
    redirect_to category_sub_categories_path(@category)
  end

  private

  def find_MainCategory
    @category = Category.find(params[:category_id])
  end

  def subcategory_params
    params.require(:sub_category).permit(:name, :description, :gender)
  end

  def find_sub_category
    @sub_category = SubCategory.find(params[:id])
  end

end
