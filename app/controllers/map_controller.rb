class MapController < ApplicationController
  def show
  	@results = Position.where({user: current_user.id})
  end
end
