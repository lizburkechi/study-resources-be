class LikesController < ApplicationController

    def index
        render json: Like.all
    end

    def show
        @like = Like.find_by(id: params[:id])
        render json: @like
    end
    
    private 

    def like_params
        params.require(:like).permit(:id, :count, :resource_id)
    end
end
