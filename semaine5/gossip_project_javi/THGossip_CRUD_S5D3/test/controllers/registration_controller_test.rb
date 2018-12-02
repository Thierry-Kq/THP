require 'test_helper'

class RegistrationControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get registration_new_url
    assert_response :success
  end

  test "should get view" do
    get registration_view_url
    assert_response :success
  end

end
