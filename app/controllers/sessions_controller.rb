
class SessionsController < ApplicationController

  # signin_path + GET
  def new
    
  end

  # sessions_path + POST
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      sign_in user
      redirect_back_or user
    else
      flash.now[:error] = "Invalid email/password combination"
      render 'new'
    end
  end

  # signout_path + DELETE
  def destroy
    sign_out
    redirect_to root_path
  end

end
