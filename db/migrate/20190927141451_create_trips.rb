class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :city
      t.integer :driver_id
      t.integer :state, default: 0
      t.integer :source_id
      t.integer :destination_id
      t.integer :last_location_id
      t.integer :seats, default: 0
      t.float :price, default: 0.0
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :trips, :name
    add_index :trips, :city
  end
end
