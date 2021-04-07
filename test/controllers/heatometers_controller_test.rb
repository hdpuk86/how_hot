require "test_helper"

class HeatometersControllerTest < ActionDispatch::IntegrationTest
  def test_can_render_edit
    get edit_heatometer_url(heatometers(:one))
    assert_response :success
  end
end
