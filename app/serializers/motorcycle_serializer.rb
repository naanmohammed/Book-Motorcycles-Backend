class MotorcycleSerializer < ActiveModel::Serializer
  attributes :id, :brand, :model, :year, :image, :rental_price

  has_many :reservations
  has_many :users, through: :reservations
end
