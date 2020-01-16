class Rating < ApplicationRecord
  belongs_to :bike
  validates :rating, inclusion: { in: 0..5 }
end
