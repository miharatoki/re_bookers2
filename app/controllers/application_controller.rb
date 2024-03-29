class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, except: [:top, :about]
  
  def after_sign_in_path_for(resource)
    users_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:email, :name])
    devise_parameter_sanitizer.permit(:sign_in, keys:[:imail, :name])
  end
end