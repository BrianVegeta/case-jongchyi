class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_filter :reject_locked!, if: :devise_controller?
  before_filter :set_locale
  

  # Devise permitted params
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(
      :username, 
      :email, 
      :password, 
      :password_confirmation) 
    }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(
      :username, 
      :email, 
      :password, 
      :password_confirmation,
      :current_password
      ) 
    }
  end
  
  # Redirects on successful sign in
  def after_sign_in_path_for(resource)
    admin_root_path
  end
  
  # Auto-sign out locked users
  def reject_locked!
    if current_user && current_user.locked?
      sign_out current_user
      user_session = nil
      current_user = nil
      flash[:alert] = "Your account is locked."
      flash[:notice] = nil
      redirect_to root_url
    end
  end
  helper_method :reject_locked!
  
  # Only permits admin users
  def require_admin!
    authenticate_user!
    
    if current_user && !current_user.admin?
      redirect_to root_path
    end
  end
  helper_method :require_admin!

  def extract_locale_from_accept_language_header
    request.env['HTTP_ACCEPT_LANGUAGE'].split(',').first.downcase.gsub(/-\w{2}/, &:upcase)
  end

  def set_locale
    if session[:locale].blank? && I18n.available_locales.include?( extract_locale_from_accept_language_header.to_sym )
      session[:locale] = extract_locale_from_accept_language_header
    end

    if params[:locale] && I18n.available_locales.include?( params[:locale].to_sym )
      session[:locale] = params[:locale]
    end
    
    I18n.locale = session[:locale] || I18n.default_locale
  end
  
  def extrac_error_message(resource)
    error_msg = ''
    resource.errors.messages.each do | messages |
      messages[1].each do |message|
       error_msg += message + '<br>' 
      end
    end
    return error_msg
  end

  def render_404
    raise ActionController::RoutingError.new('Not Found')
  end
end
