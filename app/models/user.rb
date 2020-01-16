class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #:confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         # :confirmable, :lockable, :timeoutable, :trackable, :omniauthable

  has_many :bookings
  has_many :bikes, through: :bookings
  # has_attachment :photo
  validates :email, uniqueness: true, presence: true

  def owner?
    self.is_owner
  end

  def new_owner
    self.is_owner = true
    self.save
  end
end
