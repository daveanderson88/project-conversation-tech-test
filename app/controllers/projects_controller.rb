class ProjectsController < ApplicationController
  helper_method :projects

  def index; end

  private

  def projects
    Project.all
  end
end
