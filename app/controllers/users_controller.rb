class UsersController < ApplicationController
  
    def show
      user = User.find(params[:id])
      render json:{status: 'SUCCESS', message:'LOADED PROFILE', data:user},status: :ok
    end

    def create
      user = User.new(user_params)

      if user.save
        redirect_to users_index_path
      else
        render json: {status: 'ERROR', message:'PROFILE NOT SAVED', data:user.errors},status: :bad_request
      end
    end

    def destroy
      user = User.find(params[:id])
      user.destroy
      render json: {status: 'SUCCESS', message:'PROFILE DELETED', data:user},status: :ok
    end

    def update
      user = User.find(params[:id])
      if user.update_attributes(user_params)
        render json: {status: 'SUCCESS', message:'PROFILE UPDATED', data:user},status: :ok
      else
        render json: {status: 'ERROR', message:'PROFILE NOT UPDATED', data:user.errors},status: :unprocessable_entity
      end
    end

    private


    def user_params
      params.require(:user).permit(:studentnum, :firstname, :middlename, :lastname, :sectionname, :password)
    end




  end
