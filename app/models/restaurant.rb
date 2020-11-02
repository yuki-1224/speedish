class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true

  has_many :menus
  has_many :reserves
end
