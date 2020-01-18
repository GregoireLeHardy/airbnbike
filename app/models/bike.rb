class Bike < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  has_attachment :photo

  validates :status, presence: true
  validates :user_id, presence: true
  validates :address, presence: true
end
