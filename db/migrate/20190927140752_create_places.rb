class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :city
      t.float :longitude
      t.float :latitude
      t.datetime :deleted_at
      t.timestamps
    end
    add_index :places, :name
    add_index :places, :city
  end
end
