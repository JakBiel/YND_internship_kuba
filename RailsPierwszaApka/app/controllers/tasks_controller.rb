class TasksController < ApplicationController

  def index
    @tasks = Task.all

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
    @task = Task.create!(task_params.merge(to_do_list_id: params[:to_do_list_id]))

    render json: @task
  end

  private
  def task_params
    params.require(:task).permit(:description, :due_date, :position, :done_status)
  end


end
