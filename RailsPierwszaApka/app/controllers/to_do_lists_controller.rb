class ToDoListsController < ApplicationController

  def index
    @to_do_lists = ToDoList.where(project_id: params[:project_id]).all


    render json: @to_do_lists
  end

  def show
    @to_do_list = ToDoList.find(params[:id])

    render json: @to_do_list
  end

  def new
  end

  def create
    Rails.logger.info(params)
    @to_do_list = ToDoList.create(to_do_list_params.merge(project_id: params[:project_id]))

    render json: @to_do_list
  end

  private
  def to_do_list_params
    params.require(:to_do_list).permit(:name, :project_id)
  end
end
