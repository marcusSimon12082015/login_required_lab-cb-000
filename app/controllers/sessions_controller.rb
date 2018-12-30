class SessionsController < ApplicationController
  def new
  end

  def create
    if current_user.nil? || params[:name].empty
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
    end
  end

  def destroy 
    if !current_user.nil?
      session[:name] = nil
    end 
  end
end
