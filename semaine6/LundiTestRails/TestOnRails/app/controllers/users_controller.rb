class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def clubfail
    flash.now[:danger] = "Bien essayé petit filou"
    redirect_to root_path
  end

  def new
    @user = User.new
  end

  def create
    my_params = params['user']

    User.create(first_name:my_params['first_name'], last_name:my_params['last_name'], email:my_params['email'], password:my_params['password'])
    redirect_to root_path


    # User.create(first_name:my_params['first_name'], email:my_params['email'], password:my_params['password'])
    # redirect_to root_path
  end
end


# my_params = params['user']
#     User.create(first_name:my_params['first_name'], email:my_params['email'], password:my_params['password'])
#     redirect_to root_path
#   end