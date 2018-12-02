require 'test_helper'

class UserTest < ActiveSupport::TestCase

    
  test "valid signup information" do
    get login_path
    post users_path, params: { user: {   email: "javi@gmail.com",
                                         password:"azzerty"} }
    follow_redirect!
    assert is_logged_in?
  end







    # test "should not save user without first_name" do
    #   user = User.new(password:"aze", last_name:"azer", email:"azezaee@gmail.com")

    #   assert_not user.save
    # end

    #   test "should not save user without last_name" do
    #   user = User.new(password:"aze", first_name:"azer", email:"azezaee@gmail.com")
    #   assert_not user.save
    # end

    # test "should not save user without email" do
    #   user = User.new(password:"aze", last_name:"azer", first_name:"Marc")
    #   assert_not user.save
    # end

    # test "should not save user with same email" do
    #   user = User.new(first_name:"aze", last_name:"azer", email:"azezaee")
    #   user.save
    #   user = User.new(first_name:"aze", last_name:"azer", email:"azezaee")
    #   assert_not user.save
    # end

    # test "should not save first_name with whitespace" do
    #   user = User.new(password:"aze", last_name:"azer", first_name: "    ", email:"azezaee@gmail.com")
    #   assert_not user.save
    # end

    # test "should not save last_name with whitespace" do
    #   user = User.new(password:"aze", first_name:"azer", last_name: "    ", email:"azezaee@gmail.com")
    #   assert_not user.save
    # end

end