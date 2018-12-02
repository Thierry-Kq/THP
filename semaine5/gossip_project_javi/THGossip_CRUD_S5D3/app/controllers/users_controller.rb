class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    my_params = params['user']
    User.create(first_name:my_params['first_name'], email:my_params['email'], password:my_params['password'])
    redirect_to root_path
  end

  def view
  end

  def check

    @current_user = User.where(first_name: params[:first_name], password: params[:password]).first

    if @current_user

      flash[:info] = "Bienvenue #{@current_user.first_name} !"
      # redirect_to root_path
      @hackvar = @current_user.id
      puts @hackvar
      redirect_to user_gossips_path(@current_user.id)

    else
      puts "mauvais pass"
      flash[:info] = "Échec de la connexion"

      redirect_to users_login_path

    end
  end
end
