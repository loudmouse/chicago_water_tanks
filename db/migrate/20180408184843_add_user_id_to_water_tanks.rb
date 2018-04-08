class AddUserIdToWaterTanks < ActiveRecord::Migration[5.1]
  def change
    add_column :water_tanks, :user_id, :integer
  end
end
