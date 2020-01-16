class Address < ApplicationRecord
  belongs_to :bike
  validates :street_name, presence: true
  validates :address_num, presence: true
  validates :post_code, presence: true
  validates :city, presence: true
end
