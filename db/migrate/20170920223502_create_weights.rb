class CreateWeights < ActiveRecord::Migration[5.1]
  def change
    create_table :weights do |t|
      t.integer :weight
      t.integer :weigh_month
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
