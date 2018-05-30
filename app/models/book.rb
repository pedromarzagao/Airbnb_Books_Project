class Book < ApplicationRecord
    include PgSearch
  belongs_to :user
  has_many :bookings

  mount_uploader :picture, PhotoUploader

  validates :address, presence: :true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  pg_search_scope :global_search,
    against: [ :title, :summary, :address],
    associated_against: {
      user: [ :name, :owner_bio ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
