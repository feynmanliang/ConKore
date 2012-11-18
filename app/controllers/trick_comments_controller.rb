class TrickCommentsController < ApplicationController
  def create
    @trick = Trick.find(params[:trick_id])
    @comment = @trick.trick_comments.new(params[:trick_comment])
    @comment.user_id = session[:user_id]

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @trick, notice: 'Trick comment was successfully created.' }
        format.json { render json: @comment, status: :created, location: @trick}
      else
        format.html { render @trick }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end
end
