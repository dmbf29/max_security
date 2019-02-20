class InmatesController < ApplicationController

  def create
    @prison = Prison.find(params[:prison_id])
    @inmate = Inmate.new(inmate_params)
    @inmate.prison = @prison
    if @inmate.save
      redirect_to prison_path(@prison)
    else
      render 'prisons/show'
    end
  end
  # http://localhost:3000/inmates/1
  def destroy
    @inmate = Inmate.find(params[:id])
    @inmate.destroy
    flash[:notice] = "INMATE EXECUTED"

    redirect_to prison_path(@inmate.prison)
  end

  private

  def inmate_params
    params.require(:inmate).permit(:name, :image_url, :crime)
  end
end
