class ApplicationController < ActionController::Base
   
  protect_from_forgery with: :exception

  http_basic_authenticate_with name: ENV['HTTP_BASIC_USERNAME'] , password: ENV['HTTP_BASIC_PASSWORD'] if ENV['GATEKEEPER'] == "true"


end
