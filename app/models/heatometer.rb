class Heatometer < ApplicationRecord
  def how_hot(temperature)
    return "hot" if temperature >= self.min_hot
    return "cold" if temperature <= self.max_cold
    return "warm"
  end
end
