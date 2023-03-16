class ProjectsController < ApplicationController
  include Activities

  helper_method :projects, :project, :comment

  def index; end

  def show; end

  def update
    project.update!(project_params)
    redirect_to project_path(project)
  end

  private

  def project_params
    params.require(:project).permit(:status)
  end

  def project
    Project.find(params[:id])
  end

  def comment
    Comment.new
  end

  def projects
    Project.all
  end
end
