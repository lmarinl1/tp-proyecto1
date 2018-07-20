class PositionController < ApplicationController
  def getPosition
  end

  def save
  	respond_to do |format|
	    latitud = params[:lat]
	    longitud = params[:lon]
	    puts "lon: "+longitud.to_str+" lat: "+latitud.to_str
	    #@booking = Booking.new(book_param)
	    if true #@booking.save
	          format.html { redirect_to position_getPosition_path }
	    else
	        flash[:notice_booking_failed] = true
	        redirect_to position_getPosition_path
	    end
	end

  end


end
