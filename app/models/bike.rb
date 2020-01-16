class Bike < ApplicationRecord
  has_many :bookings
  has_many :users, through: :users
  has_attachment :photo

  validates :status, presence: true
  validates :user_id, presence: true
  validates :address_id, presence: true
end
