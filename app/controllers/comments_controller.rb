class CommentsController < ApplicationController
  def create
    if comment = Comment.create(comment_params)
      redirect_to "/foods/#{comment.food.id}"
    else
      render :edit
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, food_id: params[:food_id])
  end
end
