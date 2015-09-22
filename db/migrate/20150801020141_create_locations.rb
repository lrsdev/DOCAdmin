class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.timestamps null: false
      t.integer :category, null: false, default: 0
      t.integer :region, null: false
      t.string :name, null: false
      t.text :animal_blurb, null: false
      t.st_point :geolocation, null: false, geographic: true
    end
  end
end
