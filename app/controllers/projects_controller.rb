class ProjectsController < ApplicationController
  helper_method :projects, :project

  def index; end

  def show; end

  private

  def project
    Project.find(params[:id])
  end

  def projects
    Project.all
  end
end
