require 'test_helper'

class TestControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get test_search_url
    assert_response :success
  end

  test "should get index" do
    get test_index_url
    assert_response :success
  end

  test "should get test" do
    get test_test_url
    assert_response :success
  end

end
