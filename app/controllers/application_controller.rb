class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :specialty])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :specialty])
  end

  def after_sign_in_path_for(resources)
    doctor_dashboards_path
  end
end
