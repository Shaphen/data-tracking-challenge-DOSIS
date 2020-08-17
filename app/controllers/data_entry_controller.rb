class DataEntryController < ApplicationController
  
  def edit
    @entry = DataEntry.find_by(id: params[:id])
    render :edit
  end
  
  def update
    @entry = DataEntry.find_by(id: params[:id])
    if @entry.update(advisement: params[:advisement])
      redirect_to worker_bee_url(@entry.worker_id)
    else
      flash.now[:errors] = @entry.errors.full_messages
      render :edit
    end
  end
end
