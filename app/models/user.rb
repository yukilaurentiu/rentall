class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: { minimum: 8 }
  # validates :first_name, presence: true, length: { minimum: 2 }
  # validates :last_name, presence: true, length: { minimum: 2 }
  # validates :address, presence: true
  # validates :phone_number, presence: true
  # username is optional

  has_many :bookings
  has_many :products, through: :bookings

end
