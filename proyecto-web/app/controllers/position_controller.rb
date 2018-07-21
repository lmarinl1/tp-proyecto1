class PositionController < ApplicationController
  def getPosition
  	@positions = Position.last(10)
  end

  def save
  	respond_to do |format|
	    latitud = params[:lat]
	    longitud = params[:lon]
	    puts "lon: "+longitud.to_str+" lat: "+latitud.to_str
	    @position = Position.new(user: 1,latitud: latitud, longitud: longitud)
	    if @position.save
	          format.html { redirect_to position_getPosition_path }
	    else
	        flash[:notice_booking_failed] = true
	        redirect_to position_getPosition_path
	    end
	end

  end


end
