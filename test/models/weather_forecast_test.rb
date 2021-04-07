class WeatherForecastTest < ActiveSupport::TestCase
  def setup
    @weather_forecast = WeatherForecast.new(
      "location" => {
        "country" => 'UK'
      },
      "forecast" => {
        "forecastday" => [{
          "day" => {
            "maxtemp_c" => 5.7
          }
        }]
      }
    )
  end

  def test_can_have_country
    assert_equal 'UK', @weather_forecast.country
  end

  def test_can_have_max_temp
    assert_equal 5.7, @weather_forecast.max_temp
  end

  def test_default_values
    assert_equal '', WeatherForecast.new.country
    assert_nil WeatherForecast.new.max_temp
  end
end
