class CreateWaterTankLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :water_tank_locations do |t|
      t.float :latitude
      t.float :longitude
      t.text :info

      t.timestamps
    end
  end
end
