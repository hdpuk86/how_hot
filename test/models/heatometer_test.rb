require "test_helper"

class HeatometerTest < ActiveSupport::TestCase
  def setup
    @heatometer = heatometers(:one)
  end

  def test_how_hot_returns_hot_when_equal_to_min_hot
    temperature = @heatometer.min_hot
    assert_equal "hot", @heatometer.how_hot(temperature)
  end

  def test_how_hot_returns_hot_when_over_min_hot
    temperature = @heatometer.min_hot + 1
    assert_equal "hot", @heatometer.how_hot(temperature)
  end

  def test_how_hot_returns_warm_when_between_max_cold_and_min_hot
    temperature = @heatometer.min_hot - 1
    assert_equal "warm", @heatometer.how_hot(temperature)
  end

  def test_how_hot_returns_cold_when_equal_to_max_cold
    temperature = @heatometer.max_cold
    assert_equal "cold", @heatometer.how_hot(temperature)
  end

  def test_how_hot_returns_cold_when_below_max_cold
    temperature = @heatometer.max_cold - 1
    assert_equal "cold", @heatometer.how_hot(temperature)
  end
end
