class VolunteerProject < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
