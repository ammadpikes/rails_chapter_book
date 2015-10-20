class PasswordResetController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email].downcase)
    if user
      user.generate_reset_token
      Notifier.password_reset(user).deliver_now
      flash[:success] = 'Instructions Sent! Please check your e-mail.'
      redirect_to login_path
    else
      flash.now[:danger] = 'Email Not Found! Please Try again.' 
      render "new"
    end
  end
end
