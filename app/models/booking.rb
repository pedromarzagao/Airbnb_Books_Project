class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :book
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }

  before_create :calculate_price

  def calculate_price
    (self.date_end - self.date_begin)*self.book.price
  end
end
