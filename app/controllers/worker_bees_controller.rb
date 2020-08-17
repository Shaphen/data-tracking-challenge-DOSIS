class WorkerBeesController < ApplicationController
  include OrganizeWorkerData

  def index
    @worker_bees = WorkerBee.all
    render :index
  end

  def show
    @comb_memberships = CombStaffMember.where(worker_id: params[:id]) # find all memberships
    @active_membership = @comb_memberships.order(:created_at).last # find active membership (last assigned comb)

    # get worker bee info for display
    @worker_bee = WorkerBee.find_by(id: params[:id])
    @comb = Comb.find_by(id: @active_membership.comb_id)
    @supervisor = WorkerBee.find_by(id: @comb.supervisor_id)

    @data = DataEntry.where(worker_id: params[:id]) # grab all data of worker bee
    
    # initialize data for charts
    gon.worker_name = @worker_bee.name
    gon.dates, gon.pg_values, gon.nectars = [], [], []
    
    @data = @data.order(:date).reverse_order
    @data.limit(7).each do |entry|
      gon.dates.unshift(entry.date)
      gon.pg_values.unshift(entry.pollen_globs)
      gon.nectars.unshift(entry.nectar / 100)
    end

    # calculate percentage accepted for tables
    @percent_accepted = OrganizeWorkerData.organize(@data)

    render :show
  end
  
end
