class CommentsController < ApplicationController

  before_action :authenticate_user!

  def create
    current_user.comments.create(comment_params)
    redirect_to params[:comment][:return_to]
  end

  private
  def comment_params
    params.require(:comment).permit(:commentable_id, :commentable_type, :comment)
  end

end
