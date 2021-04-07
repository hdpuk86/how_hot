class WeatherForecast
  attr_reader :country, :max_temp

  def initialize(data = {})
    @country = data.dig('location', 'country') || ''
    forecastday = data.dig('forecast', 'forecastday') || [{}]
    @max_temp = forecastday.first.dig('day', 'maxtemp_c')
  end
end
