class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :resource_name, :resource, :devise_mapping
end
