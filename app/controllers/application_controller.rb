class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_locale

  def set_locale
    session[:locale] = params[:locale] if params[:locale].present?

    logger.info "*"*80
    logger.info session[:locale]
    logger.info "*"*80

    session[:locale] = I18n.default_locale
    I18n.locale = session[:locale]
  end

end
