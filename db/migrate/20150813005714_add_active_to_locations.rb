class AddActiveToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :active, :boolean, :null => false, :default => true
  end
end
