class Api::V1::PinsController < Api::V1::BaseController
  before_action :set_pin, only: [ :show ]

  def index
    @pins = Pin.all
  end

  def show
  end

  private

  def set_pin
    @pin = Pin.find(params[:id])
  end
end
