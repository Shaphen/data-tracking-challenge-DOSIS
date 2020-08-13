class ChangePollenglobsToFloatDatatype < ActiveRecord::Migration[5.1]
  def change
    remove_column :data_entries, :pollenglobs
    add_column :data_entries, :pollen_globs, :float, null: false
  end
end
