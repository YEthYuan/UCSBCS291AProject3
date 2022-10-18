module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
    session[:user_name] = user.name
  end

  def current_user
    $current_user = User.find(session[:user_id])
    puts " ++DEBUG++ #{$current_user.name}"
  end

  def logged_in?
    !$current_user.nil?
  end
end
