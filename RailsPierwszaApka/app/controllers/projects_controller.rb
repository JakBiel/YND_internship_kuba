class ProjectsController < ApplicationController

  def index
      @project = Project.all
  end

  def show
      @project = Project.find(params[:id])

      if stale?(last_modified: @project.updated_at, public: true)
        render json: @project
      end
  end

  def new
  end

  def create
      @project = Project.new(project_params)

      @project.save
      redirect_to @project
  end

  private
  def project_params
      params.require(:project).permit(:id, :name, :description)
  end
  end

