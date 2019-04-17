class PlacesController < ApplicationController
  def index
    @tasks = Task.search(params[:term], params[:page])
  end
end
