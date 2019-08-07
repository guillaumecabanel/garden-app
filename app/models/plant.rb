class Plant < ApplicationRecord
  belongs_to :garden

  validates :name, :specy, :image_url, presence: true
end
