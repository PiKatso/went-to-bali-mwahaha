class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    binding.pry
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "sign in successful"
      redirect_to '/'
    else
      redirect_to '/sign_in'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "sign out successful, see you next time!"
    redirect_to '/sign_in'
  end

end
