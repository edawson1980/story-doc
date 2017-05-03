class Project < ApplicationRecord
  belongs_to :doc
  mount_uploader :image, ImageUploader
end
