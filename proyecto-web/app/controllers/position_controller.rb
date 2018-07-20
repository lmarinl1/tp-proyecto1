class PositionController < ApplicationController
  def getPosition
	@result = request.location.city
  end
end
