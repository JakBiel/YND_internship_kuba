class TasksController < ApplicationController

  def index

    if params[:done_status] == nil
      @tasks = Task.where(to_do_list_id: params[:to_do_list_id]).all
    else
      @tasks = Task.where(done_status: params[:done_status], to_do_list_id: params[:to_do_list_id]).all
    end

    render json: @tasks
  end

  def show
    @task = Task.find(params[:id])

    render json: @task
  end

  def new
  end

  def create
    Rails.logger.info(params)
    @task = Task.create(task_params.merge(to_do_list_id: params[:to_do_list_id]))

    render json: @task
  end

  def update
    @task = Task.find(params[:id])
    Task.update!(task_params)
    redirect_to task
  end

  private
  def task_params
    params.require(:task).permit(:name, :description, :due_date, :position, :done_status)
  end


end
