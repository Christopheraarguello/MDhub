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
    ((weight/((height * 12.0)*(height * 12.0))) * 703).round
  end

end
