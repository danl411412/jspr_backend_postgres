class Api::V1::HangoutsController < ApplicationController

  def index
    @hangouts = Hangout.all
    render json: @hangouts
  end

  def show
    @hangout = Hangout.find(params[:id])
    render json: @hangout
  end

  def create
    @hangout = Hangout.create(hangout_params)
    render json: @hangout
  end

  private

  def hangout_params
    params.require(:hangout).permit(:status, :location, :hangout_time)
  end

end
