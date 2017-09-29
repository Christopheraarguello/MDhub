class Friendship < ActiveRecord::Migration[5.1]
    def change
      create_table :friendships, id: false do |t|
      t.integer :patient_id
      t.integer :friend_patient_id
    end

    add_index(:friendships, [:patient_id, :friend_patient_id], :unique => true)
    add_index(:friendships, [:friend_patient_id, :patient_id], :unique => true)
    end
end
