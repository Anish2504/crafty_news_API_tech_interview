class CommentsController < ApplicationController
    def create
        create = Comments.find(params[:id])
        render json: { comments: comments }
      end
    end
end
