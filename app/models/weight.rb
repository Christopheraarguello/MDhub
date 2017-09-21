class Weight < ApplicationRecord
  belongs_to :patient

  def avg_weight
    weight.average(:weight)
  end

  def min_weight
    # Patient.first.weights.minimum(:weight)
    weight.minimum(:weight)
  end

  def max_weight
    # Patient.first.weights.maximum(:weight)
    weight.maximum(:weight)
  end


end
