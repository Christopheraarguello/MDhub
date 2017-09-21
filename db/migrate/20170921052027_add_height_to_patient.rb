class AddHeightToPatient < ActiveRecord::Migration[5.1]
  def change
    add_column :patients, :height, :integer
  end
end
