class AddFunToWorkerBees < ActiveRecord::Migration[5.1]
  def change
    add_column :worker_bees, :favorite_food, :string
  end
end
