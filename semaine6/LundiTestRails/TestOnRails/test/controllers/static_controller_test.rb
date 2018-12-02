require 'test_helper'

class StaticControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "valid login information" do
    User.create(last_name:"aze",first_name:"azregez",email:"azerty@gmail.com", password:"azerty")
    get login_path
    post login_path, params: { session: {email: "azerty@gmail.com", password:"azerty"} }
    assert is_logged_in?
    get '/'  
  end

    test "valid logout information" do
    User.create(last_name:"aze",first_name:"azregez",email:"azerty@gmail.com", password:"azerty")
    get login_path
    post login_path, params: { session: {email: "azerty@gmail.com", password:"azerty"} }
    get '/'  
    get '/logout'
    assert !is_logged_in?
  end

    test "valid hidden inscription when logged in" do
    User.create(last_name:"aze",first_name:"azregez",email:"azerty@gmail.com", password:"azerty")
    get login_path
    post login_path, params: { session: {email: "azerty@gmail.com", password:"azerty"} }
    get '/'  
    get '/signup'
    assert_response :success
  end





  

    test "should redirect to login" do
      get "/login"
      assert_response :success
    end
       
    test "should redirect to accueil" do
      get "/"
      assert_response :success
    end

    test "should redirect to inscription" do
      get "/signup"
      assert_response :success
    end

    # test "should redirect to logout" do
    #   get "/logout"
    #   assert_response :success
    # end
    
end
