class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :restaurant_specials, dependent: :destroy
  has_many :specials, through: :restaurant_special
  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: { case_sensitive: false }, presence: true
  validates :address, :city, :postcode, :country, presence: true

  geocoded_by :full_address
  after_validation :geocode, if: :address_changed? || :city_changed? || :country_changed?

  def full_address
    "#{address}, #{postcode}, #{city}, #{country}"
  end
end
