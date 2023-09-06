class Api::V1::CategoriesController < ApplicationController
  before_action :logged_in

  def index
    @categories = Category.includes(%i[motorcycles picture_attachment]).order(created_at: :desc)
    if @categories
      render json: @categories, status: 200
    else
      render json: { error: 'No categories yet' }
    end
  end

  def show
    @category = Category.where(id: params[:id]).includes([:picture_attachment])
    if @category
      render json: @category
    else
      render json: { error: 'Motorcycle not found' }
    end
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      render json: { message: @category }, status: :ok
    else
      render json: { error: 'Error creating category' }
    end
  end

  def destroy
    if Category.find(params[:id]).destroy
      render json: { message: 'Category deleted' }
    else
      render json: { error: 'Error deleting category' }
    end
  end

  private

  def category_params
    params.require(:category).permit(:catname, :image, :picture)
  end
end
