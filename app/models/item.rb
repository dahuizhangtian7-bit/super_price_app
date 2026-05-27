class Item < ApplicationRecord

  has_many :prices
  has_many :stores, through: :prices

  validates :name, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end
