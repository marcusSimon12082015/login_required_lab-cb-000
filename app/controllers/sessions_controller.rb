class SessionsController < ApplicationController
  def new
  end

  def create
    if current_user.nil? || params[:name].empty
      redirect_to new_session_path
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    if !current_user.nil?
      session[:name] = ""
    end
  end
end
