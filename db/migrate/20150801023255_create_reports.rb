class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.references :location,  index: true
      t.references :animal, index: true
      t.text :blurb
      t.st_point :geolocation, geographic: true
      t.timestamps null: false
    end
    add_foreign_key :reports, :locations
    add_foreign_key :reports, :animals
  end
end
