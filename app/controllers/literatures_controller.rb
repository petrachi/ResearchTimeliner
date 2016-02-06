class LiteraturesController < ApplicationController
  def index
    @literatures = Literature.all
  end

  def show
    @literature = Literature.find(params[:id])
  end
end
