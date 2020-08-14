class WorkerBeesController < ApplicationController

  def index
    @worker_bees = WorkerBee.all
    render :index
  end

  def show
    @comb_memberships = CombStaffMember.where(worker_id: params[:id]) # find all membershipts
    @active_membership = @comb_memberships.order(:created_at).last # find active membership (last assigned comb)

    # get worker bee for info display
    @worker_bee = WorkerBee.find_by(id: params[:id])
    @comb = Comb.find_by(id: @active_membership.comb_id)
    @supervisor = WorkerBee.find_by(id: @comb.supervisor_id)

    @data = DataEntry.where(worker_id: params[:id]) # find all entries for worker bee

    render :show
  end
  
end
