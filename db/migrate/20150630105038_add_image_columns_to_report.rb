class AddImageColumnsToReport < ActiveRecord::Migration
  def up
    add_attachment :reports, :image
  end

  def down
    remove_attachment :reports, :image
  end
end
