class CreateDrivers < ActiveRecord::Migration[5.0]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :city
      t.boolean :available, default: true
      t.datetime :deleted_at
      t.timestamps
    end
    add_index :drivers, :name
    add_index :drivers, :city
  end
end
