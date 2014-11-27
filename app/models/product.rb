class Product < ActiveRecord::Base

  mount_uploader :image,       ImageUploader
  mount_uploader :description, FileUploader
  mount_uploader :gcode,       GcodeUploader
  
  validates :name,  presence: true
  validates :price, presence: true
  validates :gcode, presence: true

end
