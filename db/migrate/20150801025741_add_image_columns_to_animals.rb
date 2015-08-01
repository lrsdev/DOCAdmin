class AddImageColumnsToAnimals < ActiveRecord::Migration
  def change
    add_attachment :animals, :image
  end
end
