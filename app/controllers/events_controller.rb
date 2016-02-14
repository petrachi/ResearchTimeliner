class EventsController < ApplicationController
  def index
  end

  def new
  end

  def create
    p params
    p params[:person]
    raise unless params[:person]
    redirect_to events_path
  end
end
