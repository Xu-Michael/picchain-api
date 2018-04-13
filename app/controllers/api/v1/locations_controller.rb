class Api::V1::LocationsController < Api::V1::BaseController
  def index
    @locations = Location.all
    @locations_result = @locations.map do |location|
      top_pin = location.pins.order("upvotes DESC").first
      if top_pin != nil
        location[:photo] = top_pin.image
      else
        location[:photo] = 'https://i.imgur.com/YbJozbX.png'
      end
      location
    end
  end

  def show
    @location = Location.find(params[:id])
    top_pin = @location.pins.order("upvotes DESC").first
    if top_pin != nil
      @location[:photo] = top_pin.image
    else
      @location[:photo] = 'https://i.imgur.com/YbJozbX.png'
    end
    @pins_of_location = Pin.where(location_id: @location.id).order("#{:upvotes} DESC")
  end

  def create
    @user = User.find(params[:user_id])
    @location = Location.new(location_params)
    @location.user = @user
    if @location.save
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def location_params
    params.require(:location).permit(:name, :prize, :longitude, :latitude, :user_id)
  end

  def render_error
    render json: { errors: @location.errors.full_messages },
      status: :unprocessable_entity
  end
end
