class Menu < ApplicationRecord
  validates :restaurant_id, presence: true
  validates :name, presence: true
  validates :price, presence: true

  belongs_to :restaurant
  has_many :orders
  mount_uploader :image, ImageUploader
end
