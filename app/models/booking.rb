class Booking < ApplicationRecord
  before_create :end_after_start

  belongs_to :user
  belongs_to :product

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, presence: true, numericality: { only_float: true }
  validates :user_id, uniqueness: { scope: :product_id }

  private

  # end_date has to be greater than start_date
  def end_after_start
    if end_date <= start_date
      errors.add(:end_date, "must be after the start date")
    end
  end
end
