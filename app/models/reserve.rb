class Reserve < ApplicationRecord
  validates :reserved_at, presence: true
  validates :num_of_peo, presence: true, numericality: {less_than_or_equal_to: 8}
  validates :restaurant_id, presence: true

  belongs_to :restaurant
end
