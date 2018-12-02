class EmailController < ApplicationController
  def index
    @emails = Email.all
  end

   def destroy
    @email = Email.find(params[:id])
    @email.destroy
      respond_to do |format|
      format.html {redirect_to root_path}
      format.js
    end
  end


  def show
    @email = Email.find(params[:id])
    @email.update(read: true);
    respond_to do |format|
      format.html {redirect_to root_path}
      format.js
    end
  end



end
