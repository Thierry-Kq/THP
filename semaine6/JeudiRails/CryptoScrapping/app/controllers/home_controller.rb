class HomeController < ApplicationController

  def index
    @all_currencies = Crypto.all
  end

  def find
    @all_currencies = Crypto.all
    @currency = Crypto.find(params[:format].to_i)
  end

  def update
    ScrapperCrypto.new.perform
    redirect_to (request.referer)
  end

end
