class Project < ApplicationRecord
  validates_presence_of :name, :description
  has_many :comments
  enum status: { draft: 0, active: 1, complete: 2 }, _default: :draft
  audited only: :status

  def activity_data
    (comments.activity_data + audits.status_activity_data).sort_by { |k| k[:time] }
  end
end
