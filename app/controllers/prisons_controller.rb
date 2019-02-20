class PrisonsController < ApplicationController
  def show
    @prison = Prison.find(params[:id])
    @inmate = Inmate.new
  end
end
