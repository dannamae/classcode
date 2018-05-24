class SessionsController < ApplicationController

  def create
      if params[:users][:username] == 'admin' && params[:users][:password] == 'admin'
          session[:name] = session[:username]
          redirect_to users_index_path
      else
          render 'new'
      end 
  end

  def destroy
      session[:name] = nil
      redirect_to root_path
      flash[:success] = "Logged out succesfully!"
  end
end
