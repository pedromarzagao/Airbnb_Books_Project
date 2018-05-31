class Book < ApplicationRecord
    include PgSearch
  belongs_to :user
  has_many :bookings

  mount_uploader :picture, PhotoUploader

  validates :address, presence: :true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  pg_search_scope :global_search,
    against: {
      title: 'A',
      summary:'B',
      address: 'C'
    },

    associated_against: {
      user: {
        name: 'A',
        owner_bio: 'B'
      }
    },
    using: {
      tsearch: { prefix: true }
    }
end
