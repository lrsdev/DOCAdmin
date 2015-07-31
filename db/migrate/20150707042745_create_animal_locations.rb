class CreateAnimalLocations < ActiveRecord::Migration
  def change
    create_table :animal_locations do |t|
      t.references :animal, index: true, foreign_key: true
      t.references :location, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
