class SessionsController < ApplicationController
  def new
  end

  def create
    byebug
    if params[:name].nil?
      redirect_to new_session_path
    elsif params[:name].empty?
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
