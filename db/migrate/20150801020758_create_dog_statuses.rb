class CreateDogStatuses < ActiveRecord::Migration
  def change
    create_table :dog_statuses do |t|
      t.references :location, index: true
      t.integer :status, null: false, default: 0
      t.text :guidelines, null: false
      t.timestamps null: false
    end
    add_foreign_key :dog_statuses, :locations
  end
end
