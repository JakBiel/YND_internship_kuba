class TasksController < ApplicationController

  def index

    #size_number = 3
    #
    #if params[:done_status] == nil
    #  @tasks = Task.where(to_do_list_id: params[:to_do_list_id]).all.page(params[:page]).per(size_number)
    #else
    #  @tasks = Task.where(done_status: params[:done_status], to_do_list_id: params[:to_do_list_id]).all.page(params[:page]).per(size_number)
    #end
    #
    #  #render json: @tasks
    #render json: { tasks: @tasks, meta: meta_data(@tasks) }


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

    Rails.logger.info(params)
    @task = Task.find(params[:id])
    @task.update( params.require(:task).permit( :done_status))

    render json: @task
  end

  def destroy

    @task = Task.find(params[:id])
    @task.delete

  end

  private
  def task_params
    params.require(:task).permit(:name, :description, :due_date, :position, :done_status)
  end


end
