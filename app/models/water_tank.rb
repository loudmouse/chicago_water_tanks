class WaterTank < ApplicationRecord

  geocoded_by :address
  after_validation :geocode

  has_attached_file :image, styles: { medium: "400x300>", thumb: "200x150>", default_url: "/images/:style/chicago_water_tanks_logo.png" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  belongs_to :user

end
