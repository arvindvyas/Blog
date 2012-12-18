class SessionsController < ApplicationController
  def new
   
    
  end

  def create
    @user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = @user.id
<<<<<<< HEAD
    puts "this is creraeeerere"
    redirect_to posts_url, notice: "Signed in!"
=======
    redirect_to posts_path, notice: "Signed in!"
>>>>>>> issu1
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Signed out!"
  end

  def failure
    # redirect url(:sessions, :new)
    redirect_to root_url, alert: "Authentication failed, please try again."
  end
end
