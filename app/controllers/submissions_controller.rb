class SubmissionsController < ApplicationController

  def index
    @albums = Album.all
    @submissions = Submission.all
  end

  def show
    @submission = Submission.find(params[:id])
  end

  def edit
    @submission = Submission.find(params[:id])
    @albums = Album.all
  end

  def new
    @album = Album.new
    @submission = Submission.new
  end

  def create
    @submission = Submission.create!(submission_params.merge(user: current_user))
    @submission.save
    redirect_to submission_path(@submission)
  end

  def update
    @submission = Submission.find(params[:id])
    @submission.update!(submission_params.merge(user:current_user))
    @submission.save
    redirect_to submission_path(@submission)
  end

  def destroy
    @submission = Submission.find(params[:id])
    @submission.destroy
    redirect_to submissions_path
  end

  private
  def submission_params
    params.require(:submission).permit(:title, :url, :description, :album_id)
  end

end
