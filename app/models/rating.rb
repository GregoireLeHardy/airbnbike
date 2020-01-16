class Rating < ApplicationRecord
  belongs_to :bike
  belongs_to :user
  validates :rating, inclusion: { in: 0..5 }
end
