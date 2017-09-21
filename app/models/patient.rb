class Patient < ApplicationRecord
  belongs_to :doctor
  has_many :weights

  def weight_kg
    weight * 0.45
  end

  def height_inch
    height * 12
  end

  def height_met
    height * 0.3048
  end

  def bmi
    return ((weight/((height * 12.0)*(height * 12.0))) * 703).round
  end

  def bmi_status
    case bmi
    when (0..18)
      "Underweight"
    when (19..24)
      "Normal"
    when (25..29)
      "Overweight"
    when (30..39)
      "Obese"
    when (40..54)
      "Extremely Obese"
    end
  end


    # if bmi < 19
    #   "Underweight"
    # elsif @bmi >= 19 && <=24
    #   "normal"
    #
    # elsif @bmi >= 54
    #   "ERROR"
    # end















end
