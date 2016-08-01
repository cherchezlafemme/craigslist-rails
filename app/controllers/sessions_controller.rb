class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by_email(email_params)
    if @user && @user.authenticate(auth_params)
      authentication_login(@user)
      redirect_to root_path, :notice => "Welcome back, #{@user.username}"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    authentication_logout
    redirect_to '/users/new'
  end

  private

  def login_params
    params.require(:user).permit(:email, :password)
  end

  def email_params
    login_params[:email]
  end

  def auth_params
    login_params[:password]
  end

end
