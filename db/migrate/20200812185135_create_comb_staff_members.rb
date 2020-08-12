class CreateCombStaffMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :comb_staff_members do |t|
      t.integer :comb_id
      t.integer :worker_id

      t.timestamps
    end

    add_index :comb_staff_members, :comb_id
    add_index :comb_staff_members, :worker_id
  end
end
