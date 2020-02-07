class CommentsController < ApplicationController

  def index

    size_number = 3
    @comments = Comment.where(to_do_list_id: params[:to_do_list_id]).all.page(params[:page]).per(size_number)

    render json: {comments: @comments, meta: meta_data(@comments) }#, adapter: :json
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

  def destroy

    @comment = Comment.find(params[:id])
    @comment.delete
    head 204

  end

  private
  def comment_params
    params.require(:comment).permit(:username, :post_date, :page, :body, :file)
  end

end
