class TemperatureRating < ApplicationRecord
  belongs_to :heatometer

  before_create :set_rating

  def set_rating
    forecast = WeatherForecastService.weather_for_area(self.postcode)
    rating = self.heatometer.how_hot(forecast.max_temp)
    self.rating = rating
  end
end
