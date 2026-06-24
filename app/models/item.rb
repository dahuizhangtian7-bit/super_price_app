class Item < ApplicationRecord

  has_many :prices, dependent: :destroy
  has_many :stores, through: :prices, dependent: :destroy

  validates :name, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end
