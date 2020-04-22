class CommentsController < ApplicationController
  before_action :authenticate_user!, only : %i[create]

    def create
        comment = current_user.comment(comment_params)
        if comment.persisted?
          render json: { message: 'Comments were successfully created'}, status: 200
        else
          render json: {message:'Comments were not created.'}, status: 422
      end
    end

    def comments_params
      param.require(:comment).permit(:body)
    end
end
