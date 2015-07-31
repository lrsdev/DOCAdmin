class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.text :blurb
      t.text :guidelines
      t.string :ext_url

      t.timestamps null: false
    end
  end
end
