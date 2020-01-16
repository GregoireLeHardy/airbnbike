class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  has_attachment :photo

  validates :status, presence: true
  validates :user_id, presence: true
  validates :address_id, presence: true
end
