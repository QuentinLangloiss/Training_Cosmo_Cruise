class Trip < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates_presence_of :title, :description, :category, :location, :price_per_day, :photo
  has_one_attached :photo
end
