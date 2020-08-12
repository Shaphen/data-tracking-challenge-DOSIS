class CreateDataEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :data_entries do |t|
      t.integer :worker_id, null: false
      t.date :date, null: false
      t.integer :pollenglobs, null: false
      t.integer :nectar, null: false
      t.integer :advisement

      t.timestamps
    end

    add_index :data_entries, :worker_id
    add_index :data_entries, :date
  end
end
