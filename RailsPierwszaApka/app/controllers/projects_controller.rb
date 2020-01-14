class ProjectsController < ApplicationController

  def index
      @project = Project.all

        render json: @project
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

