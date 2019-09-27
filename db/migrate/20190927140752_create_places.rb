class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :city
      t.decimal :longitude, {:precision=>10, :scale=>6}
      t.decimal :latitude, {:precision=>10, :scale=>6}
      t.datetime :deleted_at
      t.timestamps
    end
    add_index :places, :name
    add_index :places, :city
  end
end
