class CommentsController < ApplicationController

  def new
    @submission = Submission.find(params[:submission_id])
    @comment = Comment.new
  end

  def create
    @submission = Submission.find(params[:submission_id])
    @comment = @submission.comments.create(comment_params.merge(user: current_user))
    redirect_to submission_path(@submission)
  end

  def edit
    @submission = Submission.find(params[:submission_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @submission = Submission.find(params[:submission_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params.merge(user:current_user))
    redirect_to submission_path(@submission)
  end

  def destroy
    @submission = Submission.find(params[:submission_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to submission_path(@submission)
  end

  private
  def comment_params
    params.require(:comment).permit(:text)
  end
  
end
