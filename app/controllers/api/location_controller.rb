class Api::LocationController < ApplicationController
  #skip_before_action :authenticate_user!
  skip_before_action :verify_authenticity_token
  
  def create
    latitud = params[:lat]
    longitud = params[:lon]
    user = params[:user]
    @position = Position.new(user: user,latitud: latitud, longitud: longitud)
    if @position.save
      render json: @location, status: :created
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  private

  def demand_params
    params.permit(:user, :lat, :lon)
  end

end