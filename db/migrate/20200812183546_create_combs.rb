class CreateCombs < ActiveRecord::Migration[5.1]
  def change
    create_table :combs do |t|
      t.string :name, null: false
      t.integer :supervisor_id, null: false
      t.integer :sweet_spot, null: false

      t.timestamps
    end

    add_index :combs, :supervisor_id
  end
end
