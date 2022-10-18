class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    # TODO: When switch to another user, session should change
    if user
      current_user
      log_in user
      redirect_to user
    else
      # Create an error message.
      flash[:danger] = 'Invalid username/password combination'
      render 'new'
    end
  end

  def destroy
  end

end
