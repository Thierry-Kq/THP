require 'test_helper'

class TapopoControllerTest < ActionDispatch::IntegrationTest
  test "should get azel" do
    get tapopo_azel_url
    assert_response :success
  end

end
