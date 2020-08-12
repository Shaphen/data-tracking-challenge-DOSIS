class RejectNullNamesForWorkerBees < ActiveRecord::Migration[5.1]
  def change
    remove_column :worker_bees, :name
    add_column :worker_bees, :name, :string, null: false
  end
end
