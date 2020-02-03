class CommentsController < ApplicationController

  def index
    @comments = Comment.where(to_do_list_id: params[:to_do_list_id]).all

    render json: @comments
  end

  def show
    @comment = Comment.find(params[:id])

    render json: @comment
  end

  def new
  end

  def create
    @comment = Comment.create(comment_params.merge(to_do_list_id: params[:to_do_list_id]))

    render json: @comment
  end

  private
  def comment_params
    params.require(:comment).permit(:username, :post_date, :page, :body, :file)
  end

end
