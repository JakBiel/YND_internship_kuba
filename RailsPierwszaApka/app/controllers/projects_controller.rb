class ProjectsController < ApplicationController

  def index
    #@projects = Project.all
    #@projects = Project.page(1)
    #@projects = Project.order(:name).page params[:page]

    size_number = 3
    @projects = Project.all.page(params[:page]).per(size_number)

      #render json: { projects: @projects, meta: { current_page: @projects.page(params[:page]).current_page, next_page: @projects.page(params[:page]).next_page, per_page: @projects.page(params[:page]).per(size_number).size, prev_page: @projects.page(params[:page]).prev_page, total_pages: @projects.page(params[:page]).total_pages, total_count: @projects.page(params[:page]).total_count} }
      render json: { projects: @projects, meta: meta_data(@projects) }
  end

  def show
      @project = Project.find(params[:id])

      #if stale?(last_modified: @project.updated_at, public: true)
        render json: @project
      #end
  end

  #def new
  #end

  def create
      @project = Project.create(project_params)

      render json: @project
  end

  private
  def project_params

      params.require(:project).permit(:name, :description)
  end
  end

