class SizeController < ApplicationController

  before_action :find_size, only: [:edit, :update, :destroy]
  def index
    @all_size = Size.all
  end

  def new
    @size = Size.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @size = Size.create(size_params)
    redirect_to size_index_path
  end

  def edit
  end

  def update
    @size.update(size_params)
    redirect_to size_index_path
  end

  def destroy
    @size.destroy
    redirect_to size_index_path
  end

  private

  def size_params
    params.require(:size).permit(:measurements)
  end

  def find_size
    @size = Size.find(params[:id])
  end

end
