require 'test_helper'

class GossipControllerTest < ActionDispatch::IntegrationTest
  test "should get one_gossip" do
    get gossip_one_gossip_url
    assert_response :success
  end

end
