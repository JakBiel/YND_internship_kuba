class CommentsController < ApplicationController

  def index
    @comments =Comment.all

    render json: @comments
  end

  def show
    @comment = Comment.find(params[:id])

    render json: @comment
  end

  def new
  end

  def create
    @comment = Comment.create(comment_params.merge(task_id: params[:task_id]))

    render json: @comment
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

end
