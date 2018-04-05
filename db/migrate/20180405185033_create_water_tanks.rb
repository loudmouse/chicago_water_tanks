class CreateWaterTanks < ActiveRecord::Migration[5.1]
  def change
    create_table :water_tanks do |t|
      t.float :latitude
      t.float :longitude
      t.string :nickname
      t.string :address
      t.string :neighborhood

      t.timestamps
    end
  end
end
