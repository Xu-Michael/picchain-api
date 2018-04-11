class Api::V1::PinsController < Api::V1::BaseController
  def index
    @pins = Pin.all
  end

  def show
    @pin = Pin.find(params[:id])
  end

  def create
    @location = Location.find(params[:location_id])
    @pin = Pin.new(pin_params)
    @pin.location = @location
    if @pin.save
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def pin_params
    params.require(:pin).permit(:tags, :image, :longitude, :latitude, :user_id)
  end

  def render_error
    render json: { errors: @pin.errors.full_messages },
      status: :unprocessable_entity
  end
end
