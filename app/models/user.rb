class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, :omniauthable,
  # :registerable, :recoverable, :rememberable
  devise :database_authenticatable, :validatable
  validates_presence_of :name
  has_many :comments
end
