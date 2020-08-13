class CombsController < ApplicationController
  def index
    @combs = Comb.all
    render :index
  end

  def show
    @comb = Comb.find_by(id: params[:id])
    render :show
  end
end
