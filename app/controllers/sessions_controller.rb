


class SessionsController < ApplicationController
  def new
    
  end

  def create
     puts "dddddddddddddddddddddddddddddddddddddddddddd#{env['omniauth.identity'].inspect}"
 
    @user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = @user.id
    redirect_to root_url, notice: "Signed in!"
  end

  def destroy
  puts "dddddddddddddddddddddddddddddddddddddddddddd#{env["omniauth.auth"]}"
 
    session[:user_id] = nil
    redirect_to root_url, notice: "Signed out!"
  end

  def failure
  puts "ddddddddd4564564564654564d#{params.inspect}"
    # redirect url(:sessions, :new)
    redirect_to root_url, alert: "Authentication failed, please try again."
  end
end
