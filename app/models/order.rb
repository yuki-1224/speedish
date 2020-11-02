class Order < ApplicationRecord
  validates :user_id, presence: true
  validates :menu_id, presence: true
  validates :quanity, presence: true

  belongs_to :menu
  belongs_to :user
  belongs_to :reserve
end
