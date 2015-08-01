class AddImageColumnsToLocation < ActiveRecord::Migration
  def change
    add_attachment :locations, :image
  end
end
