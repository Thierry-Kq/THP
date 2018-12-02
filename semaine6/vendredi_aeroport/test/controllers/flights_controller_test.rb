require 'test_helper'

class FlightsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get flights_index_url
    assert_response :success
  end

  test "should get view" do
    get flights_view_url
    assert_response :success
  end

end
