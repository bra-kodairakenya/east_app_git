class Picture < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  validates :text, length: { minimum: 0, maxmum: 20 }
  validates :image, presence: true
end
