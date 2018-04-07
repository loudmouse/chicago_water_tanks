class AddAttachmentImageToWaterTanks < ActiveRecord::Migration[5.1]
  def self.up
    change_table :water_tanks do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :water_tanks, :image
  end
end
