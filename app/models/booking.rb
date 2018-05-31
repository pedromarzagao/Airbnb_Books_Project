class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :book
  validates :date_begin, presence: true
  validates :date_end, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
