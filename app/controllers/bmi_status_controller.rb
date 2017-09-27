class BmiStatusController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patients = Patient.all
    @bmi_state =  params[:id]
  end
end
