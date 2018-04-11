class Api::V1::LocationsController < Api::V1::BaseController
  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def location_params
    params.require(:location).permit(:name, :prize, :longitude, :latitude)
  end

  def render_error_location
    render json: { errors: @location.errors.full_messages },
      status: :unprocessable_entity
  end
end
