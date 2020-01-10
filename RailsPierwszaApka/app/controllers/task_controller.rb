class TaskController < ApplicationController

  def index
    @task =Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
  end

  def create
    @task = Task.new(task_params)

    @task.save
    redirect_to @task
  end

  private
  def task_params
    params.require(:task).permit(:id, :description, :due_date, :position, :done_status)
  end


end
