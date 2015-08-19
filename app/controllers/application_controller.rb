class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  add_breadcrumb :root 

  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:nome, :cpf, :email, :password) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:nome, :cpf, :email, :password, :current_password) }
  end  
end
