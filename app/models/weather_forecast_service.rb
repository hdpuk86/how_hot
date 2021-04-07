class WeatherForecastService
  # ToDo postcode validation
  # ToDo country validation

  def self.weather_for_area(postcode)
    response = HTTParty.get('http://api.weatherapi.com/v1/forecast.json', {
      query: {
        key: WEATHER_API_KEY,
        q: postcode,
        days: '0'
      }
    })

    if response.ok?
      data = JSON.parse(response.body)
      WeatherForecast.new(data)
    else
      WeatherForecast.new
    end
  end
end
