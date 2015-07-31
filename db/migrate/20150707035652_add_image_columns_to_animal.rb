class AddImageColumnsToAnimal < ActiveRecord::Migration
  def up
    add_attachment :animals, :image
  end

  def down
    remove_attachment :animals, :image
  end
end
