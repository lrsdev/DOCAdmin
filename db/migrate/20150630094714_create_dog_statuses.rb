class CreateDogStatuses < ActiveRecord::Migration
  def change
    create_table :dog_statuses do |t|
      t.references :location, index: true, foreign_key: true
      t.integer :status, null: false
      t.text :guidelines, null: false
      t.timestamps null: false
    end
  end
end
