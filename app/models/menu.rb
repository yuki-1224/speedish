class Menu < ApplicationRecord
  validates :restaurant_id, presence: true
  validates :name, presence: true
  validates :price, presence: true

  belongs_to :restaurant
  mount_uploader :image, ImageUploader
end
