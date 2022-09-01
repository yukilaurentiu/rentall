class Product < ApplicationRecord
  has_many :bookings
  has_one_attached :photo

  # validates :title, presence: true, length:
  #   #the user should enter a title that is min. 10 characters and max. 50 characters long
  #   { minimum: 10, maximum: 50, too_long: "%{count} characters is the maximum allowed" }
  # validates :description, presence: true, length:
  #   # the user should enter a description that is min. 10 characters and max. 4000 characters long
  #    {minimum: 10, maximum: 4000, too_long: "%{count} characters is the maximum allowed" }
  # validates :category, presence: true
  # validates :price, presence: true, numericality: { only_float: true }
  # validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
