require "test_helper"

class TemperatureRatingsControllerTest < ActionDispatch::IntegrationTest
  def test_should_get_index
    get temperature_ratings_url

    assert_response :success
  end

  def test_should_get_new
    get new_temperature_rating_url

    assert_response :success
  end

  def test_should_create_temperature_rating
    assert_difference('TemperatureRating.count') do
      post temperature_ratings_url, params: {
        temperature_rating: {
          postcode: 'aa11aa'
        }
      }
    end

    assert_redirected_to temperature_ratings_url
  end
end
