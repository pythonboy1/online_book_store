class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def confirm_login
    if session[:user_id] == nil
      flash[:notice] = 'Please Log In'
      redirect_to(:controller => 'demo', :action => 'login')
    else
      return true
    end
  end
end
