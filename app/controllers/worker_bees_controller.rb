class WorkerBeesController < ApplicationController

  def index
    @worker_bees = WorkerBee.all
    render :index
  end
  
end
