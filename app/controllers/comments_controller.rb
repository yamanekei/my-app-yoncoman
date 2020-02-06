class CommentsController < ApplicationController
  
  def index
    @comment = Comment.new
  end

  def create
    Comment.create(comment_params)
  end

  private

  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end

end
