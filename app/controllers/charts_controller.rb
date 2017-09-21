class ChartsController < ApplicationController
  def weight_by_month
    result = {}
    Patient.find(params["patient_id"]).weights.each do |weight|
      result[weight.weigh_month] = weight.weight
    end
    render json: [{name: 'Weight', data: result}]
  end
end
