class ColorsController < ApplicationController

  before_action :find_colors, only: [:edit, :update, :destroy]
  def index
    @colors = Color.all
  end

  def new
    @color = Color.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @color = Color.create(color_params)
    redirect_to colors_path
  end

  def edit
  end

  def update
    @color.update(color_params)
    redirect_to colors_path
  end

  def destroy
    @color.destroy
    redirect_to colors_path
  end

  private

  def color_params
    params.require(:color).permit(:name)
  end

  def find_colors
    @color = Color.find(params[:id])
  end

end
