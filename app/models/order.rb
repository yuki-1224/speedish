class Order < ApplicationRecord
  validates :user_id, presence: true
  validates :menu_id, presence: true
  validates :quanity, presence: true
end
