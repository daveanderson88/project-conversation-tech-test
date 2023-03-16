class ProjectsController < ApplicationController
  helper_method :projects, :project, :comment

  def index; end

  def show;  end

  private

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
