class Store < ApplicationRecord
  has_many :items, through: :prices
  has_many :prices

  validates :name, presence: true
end
