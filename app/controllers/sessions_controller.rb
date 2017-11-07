class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(user_params)

    if user
      session[:user_id] = user.id
      flash[:success] = "Look what the dern there cow's've'gon'n done drugg'd in"
      redirect_to root_path
    else
      flash[:danger] = "YOU SHALL NOT PASS!"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "To the left, to the left, everything you own..."
    redirect_to login_path
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end

end
