class RemoveTable < ActiveRecord::Migration[5.1]
  def change
    drop_table("weights")
  end
end
