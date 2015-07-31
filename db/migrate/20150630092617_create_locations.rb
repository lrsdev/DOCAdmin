class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.timestamps null: false
      t.integer :category, null: false
      t.string :name, null: false
      t.text :blurb, null: false
      t.st_point :geolocation, null: false, geographic: true
      t.st_polygon :geofence, geographic: true
    end
  end
end
