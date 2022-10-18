class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      puts " ++DEBUG++ into_login?"
      current_user
      log_in(user)
      redirect_to user
    else
      # Create an error message.
      flash[:alert] = 'Invalid username/password combination'
      puts " ++DEBUG++ login_fail?"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url, notice: 'Logged Out'
  end

end
