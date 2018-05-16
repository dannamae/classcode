class SessionController < ApplicationController


  def create
  user = User.find_by(studentnum: params[:studentnum])

  if user && user.authenticate(params[:password])
      # token = user.generate_token
    render json: {status: 'Sucess', data:user}, status: :ok
else
  render json: { error: "Wrong username or password" }, status: :unauthorized
end
end

def destroy
  current_user = nil
end
end
