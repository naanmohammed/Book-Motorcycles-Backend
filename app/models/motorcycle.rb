class Motorcycle < ApplicationRecord
  has_many :reservations
  has_many :users, through: :reservations

  validates :brand, :model, :year, :image, presence: true
  validates :rental_price, presence: true, numericality: { greater_than: 0 }
end
