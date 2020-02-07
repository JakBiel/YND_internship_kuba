class ToDoListsController < ApplicationController

  def index
      #@to_do_lists = ToDoList.where(project_id: params[:project_id]).all
      #render json: @to_do_lists

    size_number = 3
    @to_do_lists = ToDoList.where(project_id: params[:project_id]).all.page(params[:page]).per(size_number)
    #@to_do_lists = ToDoList.all.page(params[:page]).per(size_number)

      #render json: { to_do_lists: @to_do_lists, meta: { current_page: @to_do_lists.page(params[:page]).current_page, next_page: @to_do_lists.page(params[:page]).next_page, per_page: @to_do_lists.page(params[:page]).per(size_number).size, prev_page: @to_do_lists.page(params[:page]).prev_page, total_pages: @to_do_lists.page(params[:page]).total_pages, total_count: @to_do_lists.page(params[:page]).total_count} }
    #render json: { to_do_lists: @to_do_lists , meta: meta_data(@to_do_lists) } #,serializer: ToDoListSerializer
    render json: { to_do_lists: @to_do_lists, meta: meta_data(@to_do_lists) }
  end

  def show
    @to_do_list = ToDoList.find(params[:id])

    render json: @to_do_list #,serializer: ToDoListSerializer
  end

  def new
  end

  def create
    Rails.logger.info(params)
    @to_do_list = ToDoList.create(to_do_list_params.merge(project_id: params[:project_id]))

    render json: @to_do_list #, serializer: ToDoListSerializer
  end

  private
  def to_do_list_params
    params.require(:to_do_list).permit(:name)
  end
end
