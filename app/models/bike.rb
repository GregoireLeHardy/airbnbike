class Bike < ApplicationRecord
  ALLOWED_STATUSES = %w[available reserved booked].freeze

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
  # has_attachment :photo

  validates :status, presence: true, inclusion: { in: ALLOWED_STATUSES }
  validates :user_id, presence: true
  validates :address, presence: true
  validates :photo, presence: true


  def available!
    self.update!(status: 'available')
  end

  def reserved!
    self.update!(status: 'reserved')
  end

  def booked!
    self.update!(status: 'booked')
  end
end
