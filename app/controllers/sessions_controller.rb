class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    unless !session[:name]
      session.destroy
    end
  end

end
