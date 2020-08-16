class DataEntryController < ApplicationController
  
  def show

  end
  
  def edit
    @entry = DataEntry.find_by(id: params[:id])
    render :edit
  end
  
  def update
    @entry = DataEntry.find_by(id: params[:id])
    debugger
    @entry.update#(advisement: params[:entry][:advisement])
    redirect_to worker_bee_url(@entry.worker_id)
  end

end
