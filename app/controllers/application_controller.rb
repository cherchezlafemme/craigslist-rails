class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def authentication_login(user)
    session[:user_id] = user.id
  end

  def current_user
    User.find(session[:user_id])
  end

  def authentication_logout
     session.clear
  end

  def authentication_logged_in?
    !!session[:user_id]
  end

  def check_access_to_restricted_area
    if authentication_logged_in?

    else
      flash_set('Access Denied Please Login')
      redirect '/'
    end
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
