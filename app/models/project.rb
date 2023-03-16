class Project < ApplicationRecord
  validates_presence_of :name, :description
  has_many :comments
end
