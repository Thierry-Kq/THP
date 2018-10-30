require 'test_helper'

class TabloControllerTest < ActionDispatch::IntegrationTest
  test "should get tablo" do
    get tablo_tablo_url
    assert_response :success
  end

end
