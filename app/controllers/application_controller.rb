class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  add_breadcrumb :root 

  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:nome, :cpf, :email, :password) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:nome, :cpf, :email, :password, :current_password) }
  end  

  def is_admin
    flash[:error] = "Você não tem Permissão" if ! current_user.admin
    redirect_to :controller => "welcome", :action => "index" if ! current_user.admin
  end
end
