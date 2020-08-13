class ChangeSweetSpotDatatypeToFloat < ActiveRecord::Migration[5.1]
  def change
    remove_column :combs, :sweet_spot
    add_column :combs, :sweet_spot, :float
  end
end
