class SessionController < ApplicationController

  def create
  user = User.find_by(studentnum: params[:studentnum])

  if user && user.authenticate(params[:password])
    render json: { }, status: :ok
  end 
end
