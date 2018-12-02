class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :add_address, if: :devise_controller?

def add_address
  devise_parameter_sanitizer.permit(:sign_up, keys: [:address])
end

end
