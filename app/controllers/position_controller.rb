class PositionController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def getPosition
  	@positions = (Position.where({user: current_user.id}).reverse)[0,10]
  end

  def save
  	respond_to do |format|
	    latitud = params[:lat]
	    longitud = params[:lon]
	    puts "lon: "+longitud.to_str+" lat: "+latitud.to_str
	    @position = Position.new(user: current_user.id,latitud: latitud, longitud: longitud)
	    if @position.save
	          format.html { redirect_to get_position_path }
	    else
	        redirect_to get_position_path
	    end
	end

  end


end
