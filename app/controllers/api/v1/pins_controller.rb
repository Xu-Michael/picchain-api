class Api::V1::PinsController < Api::V1::BaseController
  def index
    @pins = Pin.all
  end
end
