class AddNameToWorkerBeesTable < ActiveRecord::Migration[5.1]
  def change
    add_column :worker_bees, :name, :string
  end
end
