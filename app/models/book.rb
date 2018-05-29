class Book < ApplicationRecord
  belongs_to :user
  has_many :bookings

  mount_uploader :picture, PhotoUploader

  validates :address, presence: :true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
