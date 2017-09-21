module PatientsHelper


  def weight_by_month(patient_id)
    line_chart weight_by_month_patient_charts_path(patient_id), library: {
        title: {text: 'Weight by month', x: -20},
        yAxis: {
            crosshair: true,
            title: {
                text: 'Weight LBs'
            }
        },
        xAxis: {
            crosshair: true,
            title: {
                text: 'Month'
            }
        }
    }
  end
end
