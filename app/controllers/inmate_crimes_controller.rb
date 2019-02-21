class InmateCrimesController < ApplicationController
  def new
    @inmate = Inmate.find(params[:inmate_id])
    @inmate_crime = InmateCrime.new
  end

  def create
    @inmate = Inmate.find(params[:inmate_id])
    @inmate_crime = InmateCrime.new(inmate_crime_params)
    @inmate_crime.inmate = @inmate
    if @inmate_crime.save
      redirect_to prison_path(@inmate.prison)
    else
      render :new
    end
  end

  private

  def inmate_crime_params
    params.require(:inmate_crime).permit(:crime_id)
  end
end
