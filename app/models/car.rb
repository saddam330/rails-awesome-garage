class Car < ApplicationRecord
  belongs_to :owner
  has_many :favourites, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :brand, presence: true
  validates :model, presence: true
  validates :year, numericality: { only_integer: true }
  validates :fuel, presence: true
end
