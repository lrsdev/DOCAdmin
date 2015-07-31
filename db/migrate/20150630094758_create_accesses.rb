class CreateAccesses < ActiveRecord::Migration
  def change
    create_table :accesses do |t|
      t.references :location, index: true, foreign_key: true
      t.string :name
      t.text :blurb
      t.st_point :geolocation, null: false, geographic: true
      t.timestamps null: false
    end
  end
end
