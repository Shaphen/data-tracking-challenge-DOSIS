class CombsController < ApplicationController
  def index
    @combs = Comb.all
    render :index
  end

  def show
  end
end
