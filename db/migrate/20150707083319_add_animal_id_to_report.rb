class AddAnimalIdToReport < ActiveRecord::Migration
  def change
     add_reference :reports, :animal, index: true, foreign_key: true 
  end
end
