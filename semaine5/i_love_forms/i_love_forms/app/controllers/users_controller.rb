class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if (params['user'] == nil)
      if (params['username'] == '' || params['email'] == '')
        redirect_to users_error_path
      else
        User.create(username:params['username'],email:params['email'],bio:params['bio'])
      end
    else
     user = params['user']
     if (user['username'] == '' || user['email'] == '')
      redirect_to users_error_path
     else
      User.create(username:user['username'],email:user['email'],bio:user['bio'])
     end
    end
  end

  def index
    @all_users = User.all
  end
end
