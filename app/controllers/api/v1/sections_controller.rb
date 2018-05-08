module Api
  module V1
    class SectionsController < ApplicationController
      def index
        sections = Section.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'SIGNED UP', data:sections},status: :ok
      end

      def show
        section = Section.find(params[:id])
        render json: {status: 'SUCCESS', message:'LOADED PROFILE', data:section},status: :ok
      end

      def create
        section = Section.new(section_params)

        if section.save
          render json: {status: 'SUCCESS', message:'PROFILE SAVED', data:section},status: :ok
        else
          render json: {status: 'ERROR', message:'PROFILE NOT SAVED', data:section.errors},status: :unprocessable_entity
        end
      end

      def destroy
        section = Section.find(params[:id])
        section.destroy
        render json: {status: 'SUCCESS', message:'PROFILE DELETED', data:section},status: :ok
      end

      def update
        section = Section.find(params[:id])
        if section.update_attributes(section_params)
          render json: {status: 'SUCCESS', message:'PROFILE UPDATED', data:section},status: :ok
        else
          render json: {status: 'ERROR', message:'PROFILE NOT UPDATED', data:section.errors},status: :unprocessable_entity
        end
      end

      private

      def section_params
        params.permit(:sectionname)
      end
    end
  end
end
