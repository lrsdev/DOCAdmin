class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.references :location,  index: true, null: true
      t.references :animal, index: true, null: true
      t.text :blurb, default: "No description"
      t.st_point :geolocation, geographic: true, null: false
      t.timestamps null: false
    end
    add_foreign_key :reports, :locations
    add_foreign_key :reports, :animals
  end
end
