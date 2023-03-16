# frozen_string_literal: true

module Activities
  extend ActiveSupport::Concern

  included do
    helper_method :activities
  end

  def activities
    project.activity_data
  end
end
