class DataEntryController < ApplicationController
  
  def edit
    @entry = DataEntry.find_by(id: params[:id])
    render :edit
  end
  
  def update
    @entry = DataEntry.find_by(id: params[:id])
    @entry.update(advisement: params[:advisement])
    redirect_to worker_bee_url(@entry.worker_id)
  end
end
