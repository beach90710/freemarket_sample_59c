class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    parameters = [:nickname, :first_name, :last_name, :first_name_kana, :last_name_kana, :birt_year, :birth_month, :birth_day]
    devise_parameter_sanitizer.permit(:sign_up, keys: parameters)
  end
end
