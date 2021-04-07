class Heatometer < ApplicationRecord
  has_many :temperature_ratings

  def how_hot(temperature)
    return "" if temperature.nil?
    return "hot" if temperature >= self.min_hot
    return "cold" if temperature <= self.max_cold
    return "warm"
  end
end
