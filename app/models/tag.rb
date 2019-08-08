class Tag < ApplicationRecord
  has_many :plant_tags, dependent: :destroy
  has_many :plants, through: :plant_tags

  validates :title, presence: true
end
