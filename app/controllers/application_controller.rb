class ApplicationController < ActionController::Base
  protect_from_forgery
  layout "glm"
  #before_filter :authenticate_user!
end
