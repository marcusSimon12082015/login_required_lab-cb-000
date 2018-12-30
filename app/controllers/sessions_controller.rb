class SessionsController < ApplicationController
  def new
  end

  def create 
    if current_user.nil? || current_user.empty?
      redirect_to sessions_new_path
    end 
  end 
end
