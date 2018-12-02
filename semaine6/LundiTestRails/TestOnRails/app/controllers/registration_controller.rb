class RegistrationController < ApplicationController
  
  def index
    @user = User.new
  end

  def new
    # @result = User.where(email: params[:user][:email], password: params[:user][:password]).first
    # if result == nil
    #   redirect_to not_found_path
    # else
    #   redirect_to 
  end

end
