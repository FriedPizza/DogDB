class Weather < ApplicationRecord
  validates :weather_name, presence: true, length: { maximum: 20 }
end