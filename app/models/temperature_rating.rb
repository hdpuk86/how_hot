class TemperatureRating < ApplicationRecord
  COUNTRY = 'UK'.freeze
  cattr_accessor :country do 'UK'.freeze end
  belongs_to :heatometer

  validates :postcode, presence: true
  validates_with UkPostcodeValidator

  before_create :set_rating

  private

  def set_rating
    forecast = WeatherForecastService.weather_for_area(self.postcode)
    self.errors.add(:postcode, "not found in #{COUNTRY}") && throw(:abort) if forecast.country != COUNTRY

    rating = self.heatometer.how_hot(forecast.max_temp)
    self.rating = rating
  end
end
