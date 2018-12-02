class HomeController < ApplicationController

	def static
	end

  def index
  	@all_currencies = CryptoCurrency.all
  end

  def find
  	@all_currencies = CryptoCurrency.all
  	@currency = CryptoCurrency.find(params[:format].to_i)
  end

  def update
  	ScrapperCrypto.new.perform
  	redirect_to (request.referer)
  end

end
