class ApplicationController < ActionController::Base
  # before_action :authenticatable_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def index
    @user = Users.find(session[:user_id])
  end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end
end
