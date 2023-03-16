class CommentsController < ApplicationController
  include Activities

  helper_method :project, :comment

  def new; end

  def create
    if comment.update(comment_params)
      redirect_to project_path(project)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def comment
    @comment ||= project.comments.new({ user: current_user })
  end

  def project
    Project.find(params['project_id'])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
