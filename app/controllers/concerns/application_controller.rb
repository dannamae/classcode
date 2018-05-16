class ApplicationController < ActionController::API

   attr_reader :current_user
   private


   def authenticate_user!
     _, token,  password = request.headers['Authorization'].split(' ')
     user = User.where("password = ? and tokens like ?", email, "%#{token}%").first
     if user.present? && user.has_valid_token?(token)
       @current_user = user
     else
       render json: {error: 'Invalid Authorization token'}, status: :unauthorized
     end
   end

 end
