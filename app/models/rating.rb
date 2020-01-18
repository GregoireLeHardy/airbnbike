class Rating < ApplicationRecord
  belongs_to :bike
  belongs_to :user, through: :bikes
  validates :rating, inclusion: { in: 0..5 }
end
