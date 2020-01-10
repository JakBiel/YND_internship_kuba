class ToDoListController < ApplicationController

  def index
    @to_do_list = ToDoList.all
  end

  def show
    @to_do_list = ToDoList.find(params[:id])
  end

  def new
  end

  def create
    @to_do_list = ToDoList.new(to_do_list_params)

    @to_do_list.save
    redirect_to @to_do_list
  end

  private
  def to_do_list_params
    params.require(:to_do_list).permit(:id, :name, :project_id)
  end
end
