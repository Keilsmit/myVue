class MediaController < ApplicationController
  # before_action :require_login

    # returns all media objects in json
    def index
      @media = Media.all
      render json: @media
    end

    def show
      @media = Media.find(params[:id])
      render json: @media
    end



private

    def media_params
      params.permit(:source, :type, :name, :description, :message, :sender_rating,
                    :viewer_rating, :list_id, :created_at)
    end

end
