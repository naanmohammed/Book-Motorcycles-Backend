class Api::V1::MotorcyclesController < ApplicationController
  def index
    motorcycles = Motorcycle.order(created_at: :desc).includes([:reservations])
    if motorcycles
      render json: motorcycles
    else
      render json: { error: 'No motorcycles yet' }
    end
  end

  def show
    motorcycle = Motorcycle.find_by_id(params[:id])
    if motorcycle
      render json: motorcycle
    else
      render json: { error: 'Unable to find motorcycle' }
    end
  end

  def create
    @motorcycle = Motorcycle.new(motorcycle_params)
    if @motorcycle.save
      render json: { message: 'Motorcycle created successfully' }
    else
      render json: { error: 'Error creating motorcycle' }
    end
  end

  def destroy
    @motorcycle = Motorcycle.find_by_id(params[:id])
    if @motorcycle.destroy
      render json: { message: 'Motorcycle deleted successfully' }
    else
      render json: { error: 'Error deleting motorcycle' }
    end
  end

  def motorcycle_params
    params.require(:motorcycle).permit(:image, :category_id, :rental_price, :year, :brand, :model)
  end
end
