class MapController < ApplicationController
  before_action :authenticate_user!
  
  def show
  	@results = Position.where({user: current_user.id})
  end
end
