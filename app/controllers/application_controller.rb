class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :admin
  helper_method :current_order

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id]) 
    end
  end

  def admin
    current_user && current_user.admin
  end

  def current_order
    session[:order_id] ? Order.find(session[:order_id]) : Order.new
  end

  def authorize
    flash[:notice] = "please sign in to access this page"
    redirect_to '/sign_in' unless admin
  end
end
