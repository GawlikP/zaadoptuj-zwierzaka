class SessionsController < ApplicationController
  include SessionsHelper
  def new
  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      session[:dog_errors]=[]
      redirect_to :controller => 'hello', :action => 'main'
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  def destroy
    log_out
    redirect_to root_url
  end

end
