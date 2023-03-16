class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :project
  validates_presence_of :content

  def self.activity_data
    all.map { |c| { name: c.user.name, message: c.content, time: c.created_at } }
  end
end
